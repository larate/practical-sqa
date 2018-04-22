Given("I navigate to brainteasers page") do
  @brain_page.visit

end

Given("I verify the brainteasers page loaded") do
@brain_page.page_loaded
end


When(/^I click on brainteasers "([^"]*)"$/) do |title|
  elemnt= @browser.find_element(xpath: "//li/a[text() = '#{title}']")
  elemnt.click
end

Then(/^I verify brainteaser title "([^"]*)" on the loaded page$/) do |text_p|
 element = @browser.find_element(xpath: "//h1[@class = 'entry-title']")
  expect(element.text).to eq(text_p)
end