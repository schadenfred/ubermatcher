Given /^no user exists with an email of "(.*?)"$/ do |email|
  empty = User.find_by_email(email)
  unless empty.nil?
    empty.delete
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

Given /^I am not authenticated$/ do
  Warden.test_reset!
end

And /^I am on the home page$/ do
  visit '/'
end


Given /^I am not logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I follow the "(.*?)" link$/ do |arg1|
  click_link "Sign Up" 
end

Then /^I should see "(.*?)" in the title$/ do |arg1|
  # page.find('title', text: 'Ubermatchsdf')
  page.should have_selector('title', text: arg1)
  # page.find(:xpath, './/title', text: "#{arg1}")
  # page.find(:xpath, '//title[contains('Sign Up')]')
end

When /^(?:|I )fill in the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    fill_in(name, with: value)
  end
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

Then /^I press "(.*?)"$/ do |arg1|
  click_button(arg1)
end


