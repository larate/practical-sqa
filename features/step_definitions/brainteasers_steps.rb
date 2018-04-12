
Given(/^I navigate to "([^"]*)" page$/) do |text|
  @browser.find_element(xpath: "//a[text() = '#{text}']").click
end

And(/^I verify the brainteasers page loaded$/) do
  puts @browser.title
end

When(/^I click on "([^"]*)"$/) do |link|
  @browser.find_element(xpath: "//a[text() = '#{link}']").click
end

Then(/^I verify xpath "([^"]*)"$/) do |xpath|
  @browser.find_element(xpath: "//input[@id = 'problem-xpath']").send_keys(xpath)
  @browser.find_element(xpath: "//button[@id = 'problem-guess']").click

  actual = @browser.find_element(xpath: "//span[@id = 'problem-status']").text
  expected = "Correct!!!"
  raise "Actual is #{actual}, but expected: #{expected}" unless actual === expected
end