#path= "C:/Users/Angela/Desktop/repos/practical-sqa/drivers/chromedriver.exe"


Given(/^User on the PracticalSQA Home page$/) do
 # @browser = Selenium::WebDriver.for :chrome, driver_path: path
  url = "http://www.practicalsqa.net/"
  @browser.navigate.to url

end

Then(/^Click on the "([^"]*)" link under the image$/) do |arg|
  element = @browser.find_element(xpath: "//a[text()='Blog']")
element.click
  sleep 1
  end

Then(/^Navigate to the page "([^"]*)"$/) do |arg|
  element = @browser.find_element(xpath: "//a[text()='Interview questions for black box testing – page 2']")
  element.click
  sleep 1

end

And(/^Click on the question "([^"]*)"$/) do |arg|
  element = @browser.find_element(xpath: "//dt[text()='Why do you want to be a QA engineer? Why QA?']")
element.click
   sleep 1

  end



And(/^"([^"]*)"\.$/) do |arg|
  element = @browser.find_element(xpath: "//dd[contains(text(),'Now, I don’t believe that there is only one good answer for this question')]").text
  puts element

end

