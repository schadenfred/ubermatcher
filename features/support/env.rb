require 'spork'

Spork.prefork do
  require 'cucumber/rails'
  require 'capybara/rails'
  require 'email_spec'
  require 'email_spec/cucumber'
  require 'factory_girl_rails'
  require 'database_cleaner'
  require 'database_cleaner/cucumber'
  
  OmniAuth.config.test_mode = true

  Capybara.save_and_open_page_path = 'tmp'
  Capybara.default_selector = :css
  Capybara.javascript_driver = :selenium
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

  ActionController::Base.allow_rescue = false
  Cucumber::Rails::Database.javascript_strategy = :truncation

  begin
    DatabaseCleaner.strategy = :truncation
  rescue NameError
    raise "You need to add database_cleaner to your Gemfile"
  end
end

Spork.each_run do

  FactoryGirl.reload
  Warden.test_mode!

  Dir["#{Rails.root}/app/controllers//*.rb"].each do |controller|
    load controller
  end
  Dir["#{Rails.root}/app/models//*.rb"].each do |model|
    load model
  end
  Dir["#{Rails.root}/app/workers//*.rb"].each do |worker|
    load worker
  end
  Dir["#{Rails.root}/app/mailers//*.rb"].each do |mailer|
    load mailer
  end
  Dir["#{Rails.root}/lib//*.rb"].each do |lib|
    load lib
  end
end