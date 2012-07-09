puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'fred@ubermatcher.com', :password => 'password', :password_confirmation => 'password', :confirmed_at => DateTime.now
user2 = User.create! :name => 'Second User', :email => 'user@ubermatcher.com', :password => 'password', :password_confirmation => 'password', :confirmed_at => DateTime.now
puts 'New user created: ' << user.name