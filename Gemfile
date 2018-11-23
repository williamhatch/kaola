#source 'https://gems.ruby-china.org'  #在windows下默认ssl会出错
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.5'

gem "schema_validations", :git => 'https://github.com/yuanxinyu/schema_validations'
gem "activerecord-import"
gem "migration_comments"
gem 'kaminari'
gem 'puma'
gem 'rack-cors', :require => 'rack/cors'
gem 'rack-attack'
#gem 'derailed_benchmarks', group: :development
#gem 'brakeman', :require => false, group: :development
gem 'dalli'
gem 'request_store'
gem 'rest-client'
gem 'pmap'
gem 'rails-i18n'
gem 'spreadsheet'
gem 'rubyXL'
gem 'safe_attributes'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '~> 4.2.6'
gem 'rails' #, '= 5.0.0'

gem 'thor' #, '0.19.1'

gem 'pg', '~> 0.21'
gem 'oauth2'
gem 'jwt'

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'ruby-debug-ide'
# debase is a fast implementation of the standard Ruby debugger debug.rb for Ruby 2.0 (https://github.com/denofevil/debase)
gem 'debase'
# ctags generator for ruby code (http://github.com/tmm1/ripper-tags)
gem 'pry'

gem 'rails-erd'