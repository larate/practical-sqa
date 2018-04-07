require "selenium-webdriver"
require "rspec"
driver_path =  File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")
# driver_path = "C:\Users\student\Desktop\repos\practical-sqa\drivers\chromedriver.exe"
puts  driver_path
 Before do
   @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
   @browser.manage.timeouts.implicit_wait = 10
   @browser.manage.timeouts.page_load =10
#   $base_url = "practicalsqa.net"
#   @browser.get "http://www.#{$base_url}"
 end


After do
  @browser.quit
end