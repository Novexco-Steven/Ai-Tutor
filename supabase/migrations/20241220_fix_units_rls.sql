-- Fix units RLS policy to allow anon access (curriculum structure is public)
-- The original policy only allowed authenticated users

-- Drop existing policy if it exists
DROP POLICY IF EXISTS "Anyone can view units" ON units;
DROP POLICY IF EXISTS "Public can view units" ON units;

-- Create policies for both authenticated and anon access
CREATE POLICY "Authenticated users can view units"
  ON units FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Public can view units"
  ON units FOR SELECT
  TO anon
  USING (true);
