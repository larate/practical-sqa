Given("I navigate to brainteasers page") do
  url= "http://www.old.practicalsqa.net/xpath-brainteasers-and-exercises/"
  @browser.navigate.to url
end

Given("I verify the brainteasers page loaded") do
@browser.find_element(xpath: "//li/a[text()='Nested Selectors']")
end


When(/^I click on brainteasers "([^"]*)"$/) do |title|
  elemnt= @browser.find_element(xpath: "//li/a[text() = '#{title}']")
  elemnt.click
end

Then(/^I verify brainteaser title "([^"]*)" on the loaded page$/) do |text_p|
 element = @browser.find_element(xpath: "//h1[@class = 'entry-title']")
  expect(element.text).to eq(text_p)
end