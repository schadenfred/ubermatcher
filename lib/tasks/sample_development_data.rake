require 'rubygems'
require 'faker'

def colorize(text, color_code)
 "\e[#{color_code}m#{text}\e[0m"
end

def red(text);      colorize(text, 31); end
def green(text);    colorize(text, 32); end
def yellow(text);   colorize(text, 33); end
def purple(text);   colorize(text, 34); end
def magenta(text);  colorize(text, 35); end
def cyan(text);     colorize(text, 36); end

namespace :db do
  desc "Fill database with sample data" 
  task populate: :environment do
    require 'faker'
    if Rails.env.development?
      puts "#{red("==>")} Clearing Current Data"
      Rake::Task['db:reset'].invoke
    end
    puts "#{green("==>")} Creating Fred style User"
    sample_admin
    puts "#{green("==>")} Creating sample users"
    make_users
  end
end

def sample_admin
  fred = User.create( name: 'Fred Schoeneman',
                      username: 'fred_schoeneman',
                      email: 'user@ubermatcher.com',
                      password: 'password')
  fred.confirm!
end

def make_users
  99.times do |n|
    name = Faker::Name.name 
    email = Faker::Internet.email
    password  = "password"
    user = User.new(name: name,
                    :email => email,
                    :password => password)  
    user.save!
    user.confirm!
  end
end

