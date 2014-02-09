###
# Compass
###

# Gems
require "susy"
require "dotenv"
Dotenv.load

# Lib
require_all "lib"

activate :livereload

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Haml
###

# CodeRay syntax highlighting in Haml
# First: gem install haml-coderay
# require 'haml-coderay'

# CoffeeScript filters in Haml
# First: gem install coffee-filter
# require 'coffee-filter'

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

###
# Page command
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

# Pretty URLs
activate :directory_indexes

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# Or add helper modules to the helpers/ directory
# helpers do
#   # 
# end

# Change the CSS directory
# set :css_dir, "alternative_css_directory"

# Change the JS directory
# set :js_dir, "alternative_js_directory"

# Change the images directory
# set :images_dir, "alternative_image_directory"

# Change the fonts directory
# set :fonts_dir,  "alternative_fonts_directory"

# Build-specific configuration
configure :build do

  # Requires middleman-favicon-maker
  # activate :favicon_maker,
  #   :favicon_maker_base_image => "favicon_base.svg"

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

# Requires middleman-deploy and rsync
# activate :deploy do |deploy|
#   deploy.method = :rsync
#   deploy.user   = "example"
#   deploy.host   = "www.example.com"
#   deploy.path   = "/public_html"
#   # Optional Settings
#   deploy.port  = 22 # ssh port, default: 22
#   deploy.clean = true # remove orphaned files on remote host, default: false
#   deploy.build_before = true # default: false
# end

# Skip locale validation (and validation warnings)
I18n.enforce_available_locales = false
