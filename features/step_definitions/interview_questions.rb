Given(/^User on the Practicalsqa Home page$/) do
  # $base_url = "practicalsqa.net"
  # @browser.get "http://www.#{$base_url}"
  # @browser.get "http://www.practicalsqa.net/"
  # url = "http://www.practicalsqa.net/"
  # @browser.get url
   base_url = "http://www.practicalsqa.net/"
  @browser.navigate.to base_url
end

Then(/^Navigate to the page "([^"]*)"$/) do |title|
  element = @browser.find_element(xpath:  "//h1[@class = 'entry-title']/a[text() = '#{title}']")
  element.click
  sleep 1

end

Then(/^Click on the "([^"]*)" link under the imege$/) do |arg|
  element = @browser.find_element(xpath:  "//h1[@class = 'entry-title']/a[text() = '#{arg}']")
  element.click
  sleep 1
end


When(/^Click on the question "([^"]*)"$/) do |why_qa|
  puts why_qa
 element =@browser.find_element(xpath: "//dl[@class = 'accordion']/dt[contains(text(), 'Why do you want to be a QA engineer? Why QA?')]")
 # expect(element).to include(why_qa)

end




And(/^Answer should be "([^"]*)"$/) do |arg|
  element = @browser.find_element(xpath: "//dl[@class = 'accordion']/dt[contains(text(), 'Why do you want to be a QA engineer? Why QA?')]/following-sibling::dd/p")[1]

end