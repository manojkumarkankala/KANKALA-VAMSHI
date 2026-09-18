-- Add video URL fields to site_content for hero and about videos
ALTER TABLE site_content
  ADD COLUMN IF NOT EXISTS hero_video_url text DEFAULT '',
  ADD COLUMN IF NOT EXISTS about_video_url text DEFAULT '';

-- Add video URL field to portfolio_items for project demo videos
ALTER TABLE portfolio_items
  ADD COLUMN IF NOT EXISTS video_url text DEFAULT '';
