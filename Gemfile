source 'https://rubygems.org'

gem 'rails', '3.2.3'

group :production do
  gem 'pg'
end

# Development Server
gem 'thin'

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'koala'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'eventmachine'
end

# Forms and front end
gem 'jquery-rails'
gem 'simple_form'
gem 'wicked'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'haml-rails'
gem 'kaminari'
gem 'bourbon'
gem 'best_in_place'

group :test, :development do
  gem 'sqlite3'
  gem 'faker'
  gem 'hpricot'
  gem 'ruby_parser'
  gem 'taps'
  gem 'heroku'
  gem 'debugger'

  # Rspec
  gem 'rspec-rails'
  gem 'steak'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

group :test do

  # Spork
  gem 'spork', '0.9.0'

  # Cucumber
  gem 'email_spec'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'capybara-webkit', '0.10.1'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'headless'

  # Clean out the database
  gem 'database_cleaner'

  # Guards
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-sass'

end