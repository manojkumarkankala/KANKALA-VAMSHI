-- Add write policies for all content tables so the admin panel
-- can save changes directly via the Supabase client.
-- The admin page is password-protected in the UI.

-- site_content
CREATE POLICY "admin_insert_site_content" ON site_content FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_site_content" ON site_content FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_site_content" ON site_content FOR DELETE
  TO anon, authenticated USING (true);

-- experiences
CREATE POLICY "admin_insert_experiences" ON experiences FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_experiences" ON experiences FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_experiences" ON experiences FOR DELETE
  TO anon, authenticated USING (true);

-- skills
CREATE POLICY "admin_insert_skills" ON skills FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_skills" ON skills FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_skills" ON skills FOR DELETE
  TO anon, authenticated USING (true);

-- education
CREATE POLICY "admin_insert_education" ON education FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_education" ON education FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_education" ON education FOR DELETE
  TO anon, authenticated USING (true);

-- qualities
CREATE POLICY "admin_insert_qualities" ON qualities FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_qualities" ON qualities FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_qualities" ON qualities FOR DELETE
  TO anon, authenticated USING (true);

-- stats
CREATE POLICY "admin_insert_stats" ON stats FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_stats" ON stats FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_stats" ON stats FOR DELETE
  TO anon, authenticated USING (true);

-- portfolio_items
CREATE POLICY "admin_insert_portfolio_items" ON portfolio_items FOR INSERT
  TO anon, authenticated WITH CHECK (true);
CREATE POLICY "admin_update_portfolio_items" ON portfolio_items FOR UPDATE
  TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_delete_portfolio_items" ON portfolio_items FOR DELETE
  TO anon, authenticated USING (true);
