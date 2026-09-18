-- Add all content tables to the realtime publication so the public site
-- receives live updates when the admin saves changes.
ALTER PUBLICATION supabase_realtime ADD TABLE site_content, experiences, skills, education, qualities, stats, portfolio_items;
