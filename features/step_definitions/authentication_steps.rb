Given /^no user exists with an email of "(.*?)"$/ do |email|
  empty = User.find_by_email(email)
  unless empty.nil?
    empty.delete
  end
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out')
end

And /^I am on the home page$/ do
  visit('/')
end


Given /^I am not logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I follow the "(.*?)" link$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)" in the title$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then /^I press "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see confirmation instructions in the subject$/ do
  pending # express the regexp above with the code you wish you had
end
