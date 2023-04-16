const { config }  = require('./lib/server/config')

module.exports = {
  siteUrl: process.env.SITE_URL || config.link,
  generateRobotsTxt: true,
  sitemapSize: 7000,
  generateIndexSitemap: false
  // ...other options
  // https://github.com/iamvishnusankar/next-sitemap#configuration-options
}
