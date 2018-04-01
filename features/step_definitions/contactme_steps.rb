

  Given(/^I navigate to Contact Me page$/) do

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
  @browser.find_element(id: "email").send_keys(emaile)
end

And(/^I input my web site url "([^"]*)"$/) do |my_url|
  @browser.find_element(id: "url").send_keys(my_url)

end

Then(/^I check subscribe checkbox$/) do
 button =  @browser.find_element(id: 'subscribe_blog')
  button.click

end

And(/^I click on Post Comment button$/) do
  button =  @browser.find_element(id: 'submit')
  #button.click

 sleep 1
end