Given(/^I open a browser$/) do
  url = "http://www.old.practicalsqa.net/wp-login.php/"
  # url =  "http://larissa:larissa12@www.old.practicalsqa.net/wp-login.php"
  @browser.navigate.to url
  puts "Hello world"
end

When(/^I login with "([^"]*)" username and "([^"]*)" passwor$/) do |username, password|
  puts "#{username} and #{password}"

   @browser.find_element(xpath: "//input[@id='user_login']").send_keys username
   @browser.find_element(xpath: "//input[@id='user_pass']").send_keys password
   @browser.find_element(xpath: "//input[@id='wp-submit']").click

end


When(/^I verify the Practical SQA page loaded$/) do
  @browser.find_element(xpath: "//h1[@class = 'site-title']")
end