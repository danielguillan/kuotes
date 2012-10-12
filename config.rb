require 'haml'

require 'prelude-framework'

compass_config do |config|
  config.output_style = :compact
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end