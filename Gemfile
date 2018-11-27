source 'https://rubygems.org'

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '4.1.20'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.8.0'

gem 'bootstrap-sass', '3.3.1.0'
gem 'bootstrap_form', '2.7.0', github: 'bootstrap-ruby/rails-bootstrap-forms', tag: 'v2.7.0'

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
gem 'nokogiri', '1.8.5'

group :production do
	# Use postgres as the database for Active Record
	gem 'pg', '0.21.0'
end

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
	gem 'sdoc', '0.4.2'
end
group :development, :test do
	gem 'sqlite3', '~> 1.3.13', git: 'https://github.com/larskanis/sqlite3-ruby', branch: 'add-gemspec'
end
