#!/bin/bash

# Tulomi Database Setup Script
# Run this on your LOCAL machine to automatically set up the database

echo ""
echo "🚀 Tulomi Database Setup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if service role key is provided
if [ -z "$SUPABASE_SERVICE_ROLE_KEY" ]; then
    echo "❌ SUPABASE_SERVICE_ROLE_KEY environment variable not set"
    echo ""
    echo "Usage:"
    echo "  SUPABASE_SERVICE_ROLE_KEY=your_key ./setup-database.sh"
    echo ""
    echo "Or add it to .env.local and run:"
    echo "  source .env.local && ./setup-database.sh"
    echo ""
    echo "💡 For the easiest setup, see MANUAL_SETUP.md"
    echo ""
    exit 1
fi

# Check if we have internet connectivity
if ! ping -c 1 supabase.co &> /dev/null; then
    echo "❌ No internet connection detected"
    echo "   Please check your network and try again"
    echo ""
    echo "💡 Alternative: See MANUAL_SETUP.md for copy/paste method"
    echo ""
    exit 1
fi

echo "📡 Connected to Supabase"
echo "📄 Reading schema file..."
echo ""

# Use curl to execute the SQL directly via Supabase's SQL endpoint
SUPABASE_URL="https://yrobckylfnvmkkpbygge.supabase.co"
SCHEMA_FILE="supabase/schema.sql"

if [ ! -f "$SCHEMA_FILE" ]; then
    echo "❌ Schema file not found: $SCHEMA_FILE"
    exit 1
fi

echo "🚀 Executing schema..."
echo ""

# Execute via Supabase Management API
curl -X POST "${SUPABASE_URL}/rest/v1/rpc/exec" \
  -H "Content-Type: application/json" \
  -H "apikey: ${SUPABASE_SERVICE_ROLE_KEY}" \
  -H "Authorization: Bearer ${SUPABASE_SERVICE_ROLE_KEY}" \
  -d "{\"query\": $(jq -Rs . < "$SCHEMA_FILE")}" \
  -w "\n\nHTTP Status: %{http_code}\n" \
  2>&1 | head -20

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "If you see errors above, please use the manual method:"
echo ""
echo "See MANUAL_SETUP.md for copy/paste instructions (2 minutes)"
echo ""
echo "Then verify with: npm run db:check"
echo ""
