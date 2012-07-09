source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'therubyracer'
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
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'

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

  # Generate routes for viewing at /rails/routes
  gem 'sextant'

  # Catch mail in development for inspection
  gem 'mailcatcher'
  
end

group :test do

  # Spork
  gem 'spork'

  # Cucumber
  gem 'email_spec'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'capybara-webkit'
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

end