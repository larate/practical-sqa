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
<<<<<<< HEAD
 expect(@brain_page.brain_title.text).to eq(text_p)

=======
expect(@brain_page.brainteaser_title.text).to eq(text_p)
>>>>>>> b8c01c2b11b61e60ce0fc010333f6077fab3bd1d
end