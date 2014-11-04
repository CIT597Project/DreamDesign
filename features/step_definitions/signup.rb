Given(/^I'm on the home page$/) do
  visit "/"
end

Then(/^I should see "(.*?)" on the right corner$/) do |arg1|
  page.should have_content arg1
end

