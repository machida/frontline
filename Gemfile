source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby
  gem 'compass-rails'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'best_in_place'

gem 'devise'
#gem 'oa-oauth', :require => "omniauth/oauth"

gem 'carrierwave'
gem "rmagick"

group :development do
  gem 'sqlite3'
  gem 'annotate', '~> 2.4.1.beta'
  gem 'erb2haml'
end

group :development, :test do
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec', '0.5.5'
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent',
    :git => 'git://github.com/ttilley/rb-fsevent.git',
    :branch => 'pre-compiled-gem-one-off',
    :require => false
  gem 'growl', '1.0.3'
  gem 'factory_girl_rails', '1.4.0'
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
  gem 'shoulda-matchers'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
