source 'http://rubygems.org'

gem 'rails', '3.0.0'

gem 'rake', '~> 0.8.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'
  
# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'aws-s3'

#, :require => 'aws/s3'

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end
group :production do
  gem 'pg'
end

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

gem 'heroku'

gem "jquery-rails"
gem 'hirb'
gem 'formtastic'
gem 'simple_form'
gem 'nifty-generators'
gem 'ruby_parser'
gem 'hpricot'
gem 'devise'
gem 'cells'
gem 'acts_as_list'

gem 'will_paginate', '>= 3.0.pre2'
gem 'paperclip', '2.3.3'
gem "compass", ">= 0.10.6"
gem 'haml-rails'
gem 'mocha'
gem "capybara"
gem "bluecloth"

group :test, :development do
 # gem "ruby-debug19"
  gem "webrat"
  gem "capistrano"
  gem 'factory_girl'
  #gem "cucumber-rails"
  #gem "rspec-rails", ">= 2.0.0.beta.22"
end
