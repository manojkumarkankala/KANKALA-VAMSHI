-- Storage policies for portfolio-images bucket
-- Allow public read (bucket is already public, but policy is required for API access)
-- Allow authenticated and anon upload (admin page uses anon key + password gate in the UI)

CREATE POLICY "public_read_portfolio_images"
  ON storage.objects FOR SELECT
  TO anon, authenticated
  USING (bucket_id = 'portfolio-images');

CREATE POLICY "public_upload_portfolio_images"
  ON storage.objects FOR INSERT
  TO anon, authenticated
  WITH CHECK (bucket_id = 'portfolio-images');

CREATE POLICY "public_update_portfolio_images"
  ON storage.objects FOR UPDATE
  TO anon, authenticated
  USING (bucket_id = 'portfolio-images')
  WITH CHECK (bucket_id = 'portfolio-images');

CREATE POLICY "public_delete_portfolio_images"
  ON storage.objects FOR DELETE
  TO anon, authenticated
  USING (bucket_id = 'portfolio-images');
