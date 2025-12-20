/**
 * Prompt Admin Service
 *
 * CRUD operations for managing prompt templates, versions, and user customizations.
 * Used by the admin interface for prompt management.
 */

import { supabase } from './supabase';
import { promptComposer } from './promptComposer';
import type {
  PromptType,
  PromptTemplate,
  PromptVersion,
  LearningPreferences,
  UserPromptCustomization,
  LocationMetadata,
  AdminUser,
  CreatePromptTemplateInput,
  UpdatePromptTemplateInput,
  PromptTemplateFilters,
  SaveLearningPreferencesInput,
  SaveUserCustomizationInput,
} from '@/types/prompts';

// ============================================================================
// Admin Access
// ============================================================================

/**
 * Check if a user is an admin
 */
export async function isUserAdmin(userId: string): Promise<boolean> {
  const { data, error } = await supabase
    .from('admin_users')
    .select('id, role')
    .eq('user_id', userId)
    .single();

  if (error || !data) return false;
  return true;
}

/**
 * Get admin user record
 */
export async function getAdminUser(userId: string): Promise<AdminUser | null> {
  const { data, error } = await supabase
    .from('admin_users')
    .select('*')
    .eq('user_id', userId)
    .single();

  if (error) return null;
  return data;
}

// ============================================================================
// Prompt Template CRUD
// ============================================================================

/**
 * Get all prompt templates with optional filtering
 */
export async function getPromptTemplates(
  filters: PromptTemplateFilters = {}
): Promise<PromptTemplate[]> {
  let query = supabase.from('prompt_templates').select('*');

  // Apply filters
  if (filters.prompt_type) {
    if (Array.isArray(filters.prompt_type)) {
      query = query.in('prompt_type', filters.prompt_type);
    } else {
      query = query.eq('prompt_type', filters.prompt_type);
    }
  }

  if (filters.subject_id) {
    query = query.eq('subject_id', filters.subject_id);
  }

  if (filters.unit_id) {
    query = query.eq('unit_id', filters.unit_id);
  }

  if (filters.topic_id) {
    query = query.eq('topic_id', filters.topic_id);
  }

  if (filters.country_code) {
    query = query.eq('country_code', filters.country_code);
  }

  if (filters.province_state) {
    query = query.eq('province_state', filters.province_state);
  }

  if (filters.is_active !== undefined) {
    query = query.eq('is_active', filters.is_active);
  }

  if (filters.search) {
    query = query.or(
      `name.ilike.%${filters.search}%,description.ilike.%${filters.search}%,prompt_content.ilike.%${filters.search}%`
    );
  }

  query = query.order('prompt_type').order('priority', { ascending: false });

  const { data, error } = await query;

  if (error) throw error;
  return data || [];
}

/**
 * Get a single prompt template by ID
 */
export async function getPromptTemplate(id: string): Promise<PromptTemplate | null> {
  const { data, error } = await supabase
    .from('prompt_templates')
    .select('*')
    .eq('id', id)
    .single();

  if (error) {
    if (error.code === 'PGRST116') return null;
    throw error;
  }

  return data;
}

/**
 * Create a new prompt template
 */
export async function createPromptTemplate(
  input: CreatePromptTemplateInput,
  createdBy: string
): Promise<PromptTemplate> {
  const { data, error } = await supabase
    .from('prompt_templates')
    .insert({
      ...input,
      created_by: createdBy,
      override_sections: input.override_sections || {},
      priority: input.priority || 0,
    })
    .select()
    .single();

  if (error) throw error;

  // Clear cache so new template is picked up
  promptComposer.clearCache();

  return data;
}

/**
 * Update an existing prompt template
 */
export async function updatePromptTemplate(
  id: string,
  input: UpdatePromptTemplateInput,
  updatedBy: string
): Promise<PromptTemplate> {
  // Get current version for change tracking
  const current = await getPromptTemplate(id);
  if (!current) {
    throw new Error('Prompt template not found');
  }

  const updateData: Record<string, unknown> = {
    updated_at: new Date().toISOString(),
  };

  if (input.name !== undefined) updateData.name = input.name;
  if (input.description !== undefined) updateData.description = input.description;
  if (input.prompt_content !== undefined) updateData.prompt_content = input.prompt_content;
  if (input.override_sections !== undefined) updateData.override_sections = input.override_sections;
  if (input.is_active !== undefined) updateData.is_active = input.is_active;
  if (input.priority !== undefined) updateData.priority = input.priority;

  const { data, error } = await supabase
    .from('prompt_templates')
    .update(updateData)
    .eq('id', id)
    .select()
    .single();

  if (error) throw error;

  // Clear cache
  promptComposer.clearCache();

  return data;
}

/**
 * Delete a prompt template (soft delete by setting is_active = false)
 */
export async function deletePromptTemplate(id: string): Promise<void> {
  const { error } = await supabase
    .from('prompt_templates')
    .update({ is_active: false })
    .eq('id', id);

  if (error) throw error;

  // Clear cache
  promptComposer.clearCache();
}

/**
 * Permanently delete a prompt template
 */
export async function hardDeletePromptTemplate(id: string): Promise<void> {
  const { error } = await supabase.from('prompt_templates').delete().eq('id', id);

  if (error) throw error;

  // Clear cache
  promptComposer.clearCache();
}

// ============================================================================
// Prompt Version History
// ============================================================================

/**
 * Get version history for a prompt template
 */
export async function getPromptVersions(templateId: string): Promise<PromptVersion[]> {
  const { data, error } = await supabase
    .from('prompt_versions')
    .select('*')
    .eq('prompt_template_id', templateId)
    .order('version_number', { ascending: false });

  if (error) throw error;
  return data || [];
}

/**
 * Get a specific version
 */
export async function getPromptVersion(versionId: string): Promise<PromptVersion | null> {
  const { data, error } = await supabase
    .from('prompt_versions')
    .select('*')
    .eq('id', versionId)
    .single();

  if (error) {
    if (error.code === 'PGRST116') return null;
    throw error;
  }

  return data;
}

/**
 * Rollback a prompt template to a previous version
 */
export async function rollbackToVersion(
  templateId: string,
  versionId: string,
  rolledBackBy: string
): Promise<PromptTemplate> {
  // Get the version to rollback to
  const version = await getPromptVersion(versionId);
  if (!version) {
    throw new Error('Version not found');
  }

  if (version.prompt_template_id !== templateId) {
    throw new Error('Version does not belong to this template');
  }

  // Update the template with the version's content
  const { data, error } = await supabase
    .from('prompt_templates')
    .update({
      prompt_content: version.prompt_content,
      override_sections: version.override_sections,
      updated_at: new Date().toISOString(),
    })
    .eq('id', templateId)
    .select()
    .single();

  if (error) throw error;

  // The trigger will create a new version automatically
  // Update that new version to mark it as a rollback
  const { data: versions } = await supabase
    .from('prompt_versions')
    .select('id')
    .eq('prompt_template_id', templateId)
    .eq('is_current', true)
    .single();

  if (versions) {
    await supabase
      .from('prompt_versions')
      .update({
        change_summary: `Rolled back to version ${version.version_number}`,
        rolled_back_from: versionId,
        changed_by: rolledBackBy,
      })
      .eq('id', versions.id);
  }

  // Clear cache
  promptComposer.clearCache();

  return data;
}

// ============================================================================
// Learning Preferences
// ============================================================================

/**
 * Get learning preferences for a user
 */
export async function getLearningPreferences(
  userId: string
): Promise<LearningPreferences | null> {
  const { data, error } = await supabase
    .from('learning_preferences')
    .select('*')
    .eq('user_id', userId)
    .single();

  if (error) {
    if (error.code === 'PGRST116') return null;
    throw error;
  }

  return data;
}

/**
 * Save learning preferences for a user (create or update)
 */
export async function saveLearningPreferences(
  userId: string,
  input: SaveLearningPreferencesInput
): Promise<LearningPreferences> {
  // Check if preferences exist
  const existing = await getLearningPreferences(userId);

  const prefsData = {
    user_id: userId,
    preferred_teacher_persona: input.preferred_teacher_persona,
    preferred_teaching_method: input.preferred_teaching_method,
    preferred_feedback_method: input.preferred_feedback_method,
    learning_style: input.learning_style,
    custom_preferences: input.custom_preferences || {},
    updated_at: new Date().toISOString(),
  };

  let result;

  if (existing) {
    // Update
    const { data, error } = await supabase
      .from('learning_preferences')
      .update(prefsData)
      .eq('user_id', userId)
      .select()
      .single();

    if (error) throw error;
    result = data;
  } else {
    // Insert
    const { data, error } = await supabase
      .from('learning_preferences')
      .insert({
        ...prefsData,
        created_at: new Date().toISOString(),
      })
      .select()
      .single();

    if (error) throw error;
    result = data;
  }

  // Clear user cache
  promptComposer.clearUserCache(userId);

  return result;
}

// ============================================================================
// User Prompt Customizations
// ============================================================================

/**
 * Get all customizations for a user
 */
export async function getUserCustomizations(
  userId: string
): Promise<UserPromptCustomization[]> {
  const { data, error } = await supabase
    .from('user_prompt_customizations')
    .select('*')
    .eq('user_id', userId)
    .eq('is_active', true)
    .order('created_at', { ascending: false });

  if (error) throw error;
  return data || [];
}

/**
 * Get a specific customization
 */
export async function getUserCustomization(
  userId: string,
  scope: { subjectId?: string; unitId?: string; topicId?: string }
): Promise<UserPromptCustomization | null> {
  let query = supabase
    .from('user_prompt_customizations')
    .select('*')
    .eq('user_id', userId)
    .eq('is_active', true);

  if (scope.topicId) {
    query = query.eq('topic_id', scope.topicId);
  } else if (scope.unitId) {
    query = query.eq('unit_id', scope.unitId).is('topic_id', null);
  } else if (scope.subjectId) {
    query = query.eq('subject_id', scope.subjectId).is('unit_id', null).is('topic_id', null);
  }

  const { data, error } = await query.single();

  if (error) {
    if (error.code === 'PGRST116') return null;
    throw error;
  }

  return data;
}

/**
 * Save a user customization (create or update)
 */
export async function saveUserCustomization(
  userId: string,
  input: SaveUserCustomizationInput
): Promise<UserPromptCustomization> {
  // Check if customization exists for this scope
  const existing = await getUserCustomization(userId, {
    subjectId: input.subject_id,
    unitId: input.unit_id,
    topicId: input.topic_id,
  });

  const customData = {
    user_id: userId,
    subject_id: input.subject_id || null,
    unit_id: input.unit_id || null,
    topic_id: input.topic_id || null,
    custom_instructions: input.custom_instructions,
    focus_areas: input.focus_areas || [],
    avoid_topics: input.avoid_topics || [],
    custom_examples: input.custom_examples || [],
    is_active: true,
    updated_at: new Date().toISOString(),
  };

  let result;

  if (existing) {
    // Update
    const { data, error } = await supabase
      .from('user_prompt_customizations')
      .update(customData)
      .eq('id', existing.id)
      .select()
      .single();

    if (error) throw error;
    result = data;
  } else {
    // Insert
    const { data, error } = await supabase
      .from('user_prompt_customizations')
      .insert({
        ...customData,
        created_at: new Date().toISOString(),
      })
      .select()
      .single();

    if (error) throw error;
    result = data;
  }

  // Clear user cache
  promptComposer.clearUserCache(userId);

  return result;
}

/**
 * Delete a user customization
 */
export async function deleteUserCustomization(
  userId: string,
  customizationId: string
): Promise<void> {
  const { error } = await supabase
    .from('user_prompt_customizations')
    .update({ is_active: false })
    .eq('id', customizationId)
    .eq('user_id', userId);

  if (error) throw error;

  // Clear user cache
  promptComposer.clearUserCache(userId);
}

// ============================================================================
// Location Metadata
// ============================================================================

/**
 * Get all active locations
 */
export async function getLocations(): Promise<LocationMetadata[]> {
  const { data, error } = await supabase
    .from('location_metadata')
    .select('*')
    .eq('is_active', true)
    .order('country_code')
    .order('province_state');

  if (error) throw error;
  return data || [];
}

/**
 * Get locations grouped by country
 */
export async function getLocationsByCountry(): Promise<
  Record<string, LocationMetadata[]>
> {
  const locations = await getLocations();

  const grouped: Record<string, LocationMetadata[]> = {};

  for (const loc of locations) {
    if (!grouped[loc.country_code]) {
      grouped[loc.country_code] = [];
    }
    grouped[loc.country_code].push(loc);
  }

  return grouped;
}

/**
 * Get provinces/states for a country
 */
export async function getProvincesForCountry(
  countryCode: string
): Promise<LocationMetadata[]> {
  const { data, error } = await supabase
    .from('location_metadata')
    .select('*')
    .eq('country_code', countryCode)
    .eq('is_active', true)
    .not('province_state', 'is', null)
    .order('display_name');

  if (error) throw error;
  return data || [];
}

// ============================================================================
// Duplicate / Clone
// ============================================================================

/**
 * Duplicate a prompt template
 */
export async function duplicatePromptTemplate(
  id: string,
  createdBy: string,
  overrides?: Partial<CreatePromptTemplateInput>
): Promise<PromptTemplate> {
  const original = await getPromptTemplate(id);
  if (!original) {
    throw new Error('Prompt template not found');
  }

  const newTemplate: CreatePromptTemplateInput = {
    prompt_type: overrides?.prompt_type || original.prompt_type,
    name: overrides?.name || `${original.name} (Copy)`,
    description: overrides?.description || original.description,
    prompt_content: overrides?.prompt_content || original.prompt_content,
    override_sections: overrides?.override_sections || original.override_sections,
    subject_id: overrides?.subject_id || original.subject_id,
    unit_id: overrides?.unit_id || original.unit_id,
    topic_id: overrides?.topic_id || original.topic_id,
    country_code: overrides?.country_code || original.country_code,
    province_state: overrides?.province_state || original.province_state,
    priority: overrides?.priority ?? original.priority,
  };

  return createPromptTemplate(newTemplate, createdBy);
}

// ============================================================================
// Bulk Operations
// ============================================================================

/**
 * Activate/deactivate multiple templates
 */
export async function bulkUpdateTemplateStatus(
  ids: string[],
  isActive: boolean
): Promise<void> {
  const { error } = await supabase
    .from('prompt_templates')
    .update({ is_active: isActive, updated_at: new Date().toISOString() })
    .in('id', ids);

  if (error) throw error;

  // Clear cache
  promptComposer.clearCache();
}

/**
 * Export templates as JSON
 */
export async function exportTemplates(
  filters: PromptTemplateFilters = {}
): Promise<string> {
  const templates = await getPromptTemplates(filters);
  return JSON.stringify(templates, null, 2);
}

/**
 * Import templates from JSON
 */
export async function importTemplates(
  json: string,
  importedBy: string
): Promise<{ imported: number; skipped: number; errors: string[] }> {
  const templates = JSON.parse(json) as Partial<PromptTemplate>[];
  const results = { imported: 0, skipped: 0, errors: [] as string[] };

  for (const template of templates) {
    try {
      // Skip if required fields missing
      if (!template.prompt_type || !template.name || !template.prompt_content) {
        results.skipped++;
        continue;
      }

      await createPromptTemplate(
        {
          prompt_type: template.prompt_type,
          name: template.name,
          description: template.description,
          prompt_content: template.prompt_content,
          override_sections: template.override_sections,
          subject_id: template.subject_id,
          unit_id: template.unit_id,
          topic_id: template.topic_id,
          country_code: template.country_code,
          province_state: template.province_state,
          priority: template.priority,
        },
        importedBy
      );
      results.imported++;
    } catch (error) {
      results.errors.push(
        `Failed to import "${template.name}": ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  return results;
}
