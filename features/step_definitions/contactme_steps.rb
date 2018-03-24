
driver_path =  File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")
  puts  driver_path
  Given(/^I navigate to Contact Me page$/) do
    @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
    @browser.manage.timeouts.implicit_wait = 10
    @browser.manage.timeouts.page_load =10
    url = "http://www.practicalsqa.net/contact-me/"
    @browser.navigate.to url

  puts "WebDriver has been created"
end

When(/^I verify the Contact Me page loaded$/) do
  @browser.find_element({xpath: "//h1[@class = 'entry-title' and text() = 'Contact Me']"})
end

Then(/^I write my comment "([^"]*)"$/) do |comment|
   @browser.find_element(id: "comment").send_keys comment
  # puts "#{comment}"
end

And(/^I input my name "([^"]*)"$/) do |name|
  @browser.find_element(id: "author").send_keys(name)


end

Then(/^I input my email address "([^"]*)"$/) do |emaile|

end

And(/^I input my web site url "([^"]*)"$/) do |my_url|

end

Then(/^I check subscribe checkbox$/) do

end

And(/^I click on Post Comment button$/) do

 sleep 1
end