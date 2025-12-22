/**
 * Voice Teacher Service
 *
 * CRUD operations for voice teacher personas used in text-to-speech.
 * Integrates with Supabase for persistence.
 */

import { supabase } from './supabase';
import type { VoiceTeacher, VoiceTeacherInput } from '@/types';

/**
 * Get all active voice teachers (for regular users)
 */
export async function getActiveVoiceTeachers(): Promise<VoiceTeacher[]> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .select('*')
    .eq('is_active', true)
    .order('display_order', { ascending: true });

  if (error) throw error;
  return data || [];
}

/**
 * Get all voice teachers including inactive (for admins)
 */
export async function getAllVoiceTeachers(): Promise<VoiceTeacher[]> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .select('*')
    .order('display_order', { ascending: true });

  if (error) throw error;
  return data || [];
}

/**
 * Get a single voice teacher by ID
 */
export async function getVoiceTeacher(id: string): Promise<VoiceTeacher | null> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .select('*')
    .eq('id', id)
    .single();

  if (error) {
    if (error.code === 'PGRST116') {
      return null; // Not found
    }
    throw error;
  }
  return data;
}

/**
 * Get the default voice teacher
 */
export async function getDefaultVoiceTeacher(): Promise<VoiceTeacher | null> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .select('*')
    .eq('is_default', true)
    .eq('is_active', true)
    .single();

  if (error) {
    if (error.code === 'PGRST116') {
      // No default found, get first active voice teacher
      const teachers = await getActiveVoiceTeachers();
      return teachers[0] || null;
    }
    throw error;
  }
  return data;
}

/**
 * Create a new voice teacher (admin only)
 */
export async function createVoiceTeacher(
  input: VoiceTeacherInput,
  createdBy?: string
): Promise<VoiceTeacher> {
  // If setting as default, unset other defaults first
  if (input.is_default) {
    await supabase
      .from('voice_teachers')
      .update({ is_default: false })
      .eq('is_default', true);
  }

  const { data, error } = await supabase
    .from('voice_teachers')
    .insert({
      name: input.name,
      description: input.description,
      voice_name: input.voice_name,
      language_code: input.language_code || 'en-US',
      speaking_rate: input.speaking_rate ?? 1.0,
      pitch: input.pitch ?? 0.0,
      volume_gain_db: input.volume_gain_db ?? 0.0,
      personality_prompt: input.personality_prompt,
      target_audience: input.target_audience,
      teaching_style: input.teaching_style,
      icon: input.icon,
      color: input.color,
      is_active: input.is_active ?? true,
      is_default: input.is_default ?? false,
      display_order: input.display_order ?? 0,
      created_by: createdBy,
    })
    .select()
    .single();

  if (error) throw error;
  return data;
}

/**
 * Update a voice teacher (admin only)
 */
export async function updateVoiceTeacher(
  id: string,
  input: Partial<VoiceTeacherInput>
): Promise<VoiceTeacher> {
  // If setting as default, unset other defaults first
  if (input.is_default) {
    await supabase
      .from('voice_teachers')
      .update({ is_default: false })
      .eq('is_default', true)
      .neq('id', id);
  }

  const { data, error } = await supabase
    .from('voice_teachers')
    .update({
      ...input,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select()
    .single();

  if (error) throw error;
  return data;
}

/**
 * Delete a voice teacher (admin only)
 * This is a soft delete - sets is_active to false
 */
export async function deleteVoiceTeacher(id: string): Promise<void> {
  const { error } = await supabase
    .from('voice_teachers')
    .update({ is_active: false })
    .eq('id', id);

  if (error) throw error;
}

/**
 * Hard delete a voice teacher (admin only)
 * Use with caution - permanently removes the record
 */
export async function hardDeleteVoiceTeacher(id: string): Promise<void> {
  const { error } = await supabase
    .from('voice_teachers')
    .delete()
    .eq('id', id);

  if (error) throw error;
}

/**
 * Reorder voice teachers (admin only)
 */
export async function reorderVoiceTeachers(
  orderedIds: string[]
): Promise<void> {
  // Update each voice teacher's display_order
  const updates = orderedIds.map((id, index) => ({
    id,
    display_order: index + 1,
  }));

  for (const update of updates) {
    const { error } = await supabase
      .from('voice_teachers')
      .update({ display_order: update.display_order })
      .eq('id', update.id);

    if (error) throw error;
  }
}

/**
 * Toggle voice teacher active status (admin only)
 */
export async function toggleVoiceTeacherActive(
  id: string,
  isActive: boolean
): Promise<VoiceTeacher> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .update({ is_active: isActive })
    .eq('id', id)
    .select()
    .single();

  if (error) throw error;
  return data;
}

/**
 * Set a voice teacher as the default
 */
export async function setDefaultVoiceTeacher(id: string): Promise<VoiceTeacher> {
  // Unset current default
  await supabase
    .from('voice_teachers')
    .update({ is_default: false })
    .eq('is_default', true);

  // Set new default
  const { data, error } = await supabase
    .from('voice_teachers')
    .update({ is_default: true })
    .eq('id', id)
    .select()
    .single();

  if (error) throw error;
  return data;
}

/**
 * Search voice teachers by target audience or teaching style
 */
export async function searchVoiceTeachers(query: string): Promise<VoiceTeacher[]> {
  const { data, error } = await supabase
    .from('voice_teachers')
    .select('*')
    .eq('is_active', true)
    .or(`name.ilike.%${query}%,target_audience.ilike.%${query}%,teaching_style.ilike.%${query}%`)
    .order('display_order', { ascending: true });

  if (error) throw error;
  return data || [];
}

/**
 * Get voice teachers suitable for a grade level
 */
export async function getVoiceTeachersForGrade(gradeLevel: number): Promise<VoiceTeacher[]> {
  const teachers = await getActiveVoiceTeachers();

  // Filter teachers based on target audience
  return teachers.filter(teacher => {
    const audience = teacher.target_audience?.toLowerCase() || '';

    // K-2 (grades 0-2)
    if (gradeLevel <= 2 && (audience.includes('k-2') || audience.includes('young'))) {
      return true;
    }

    // Elementary (grades 3-5)
    if (gradeLevel >= 3 && gradeLevel <= 5 && (audience.includes('k-5') || audience.includes('elementary'))) {
      return true;
    }

    // Middle school (grades 6-8)
    if (gradeLevel >= 6 && gradeLevel <= 8 && audience.includes('middle')) {
      return true;
    }

    // High school (grades 9-12)
    if (gradeLevel >= 9 && (audience.includes('high') || audience.includes('advanced'))) {
      return true;
    }

    // Teachers for all ages
    if (audience.includes('all') || !teacher.target_audience) {
      return true;
    }

    return false;
  });
}
