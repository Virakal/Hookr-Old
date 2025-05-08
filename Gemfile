source 'https://rubygems.org'

ruby '2.5.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'

# Rails seems to want this?
gem 'bootsnap', '1.3.2'

# Use SCSS for stylesheets
gem 'sassc-rails', '2.1.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '4.1.20'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '5.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.2.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '2.8.0'

# Use Webpacker
gem 'webpacker', '4.0.7'

# Bootstrap Form Helpers
gem 'bootstrap-sass', '3.4.1'
gem 'bootstrap_form', '2.7.0', git: 'https://github.com/bootstrap-ruby/rails-bootstrap-forms', tag: 'v5.4.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

gem 'addressable', '2.5.2'
gem 'pdf-reader', '2.1.0'
gem 'nokogiri', '1.11.4'

group :production do
	# Use postgres as the database for Active Record
	gem 'pg'
end

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
	gem 'sdoc', '0.4.2'
end

group :development, :test do
	gem 'sqlite3', '~> 1.3.13', git: 'https://github.com/larskanis/sqlite3-ruby', branch: 'add-gemspec'
end
