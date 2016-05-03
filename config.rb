#-------------------------------------------------------- Blog 1
#activate :blog do |blog|
    #blog.name = "blog"
    # This will add a prefix to all links, template references and source paths
    #blog.prefix = "blog"
    # blog.permalink = "{year}/{month}/{day}/{title}.html"
    # Matcher for blog source files
    # blog.sources = "{year}-{month}-{day}-{title}.html"
    # blog.taglink = "tags/{tag}.html"
    #blog.layout = "layoutBlog"
    #blog.summary_separator = /(READMORE)/
    # blog.summary_length = 250
    # blog.year_link = "{year}.html"
    # blog.month_link = "{year}/{month}.html"
    # blog.day_link = "{year}/{month}/{day}.html"
    #blog.default_extension = ".md"
    #blog.tag_template = "blog/tag.html"
    #blog.calendar_template = "blog/calendar.html"
    # Enable pagination
    #blog.paginate = true
    #blog.per_page = 10
    #blog.page_link = "page/{num}"
#end

#-------------------------------------------------------- Pretty URLs
activate :directory_indexes

page "/401.html", :directory_index => false
page "/403.html", :directory_index => false
page "/404.html", :directory_index => false
page "/500.html", :directory_index => false


#-------------------------------------------------------- Layouts

# Per-page layout changes:
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
#page '/foo/index.html', layout: 'layoutName'

# A path which all have the same layout
#page '/foo/*', layout: 'layoutName'


#-------------------------------------------------------- Proxy Pages
# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)

# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

#-------------------------------------------------------- Helpers

# middleman-breadcrumbs extension
# activate :breadcrumbs

# middleman-search_engine_sitemap
set :url_root, 'http://yourSite.com/'
activate :search_engine_sitemap

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
    activate :livereload
end


#-------------------------------------------------------- Directories
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'


#-------------------------------------------------------- Build Settings
configure :build do

    activate :minify_css

    activate :minify_javascript

    # Use relative URLs
    # activate :relative_assets

    # Or use a different image path
    # set :http_prefix, "/Content/images/"

    # CDN Settings
    #activate :asset_host,
    #host: "http://yourSite.com/cdn/",
    #exts: %w(.jpg .jpeg .png .gif .svg .js .css .eot .ttf .woff .woff2 .otf),
    #sources: %w(.html .css),
    # #Ignore all favicon related stuff
    #ignore: [/\bandroid(.*)/, /\bapple(.*)/, /\bfavicon(.*)/, /\bmstile(.*)/, /\bmanifest(.*)/]

    # Cache Buster: Add hashes to ends of asset file names.
    # #activate :asset_hash, :exts => %w(.jpg .jpeg .png .gif .svg .js .css .eot .ttf .woff .woff2)
    #activate :asset_hash,
    # #Ignore all favicon related stuff
    #ignore: [/\bandroid(.*)/, /\bapple(.*)/, /\bfavicon(.*)/, /\bmstile(.*)/, /\bmanifest(.*)/]
end
