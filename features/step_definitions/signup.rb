Given(/^I'm on the home page$/) do
  visit root_path
end

Then(/^I should see "(.*?)" on the right corner$/) do |arg1|
  page.should have_content arg1
end

Given(/^I'm on the email sign up page$/) do 
  visit root_path
end
