# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'http://webuyanystairlift.org.uk'

SitemapGenerator::Sitemap.create do
  add '/about-us'
  add '/selling-your-stairlift'
  add '/contact-us'
  add '/contact-thankyou'
  add '/feedback-thankyou'
end
