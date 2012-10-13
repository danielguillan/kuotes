require 'haml'

require 'prelude-framework'

compass_config do |config|
  config.output_style = :compact
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

data.kuotes.each_with_index do |k, i|
  # Generate kuote page
  page "/kuote/#{i}.html", :proxy => "/kuote.html" do
    @kuote = k
  end
end

#puts authors

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end