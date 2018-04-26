Given("I navigate to brainteasers page") do
  @brain_page.visit
end

Given("I verify the brainteasers page loaded") do
@brain_page.page_loaded
end


When(/^I click on brainteasers "([^"]*)"$/) do |title|
 @brain_page.click_brainteaser(title)
end

Then(/^I verify brainteaser title "([^"]*)" on the loaded page$/) do |text_p|
expect(@brain_page.brainteaser_title.text).to eq(text_p)
end