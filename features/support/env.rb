require "selenium-webdriver"
require "rspec"
 Before do
   driver_path =  File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")
   puts  driver_path
   @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
   @browser.manage.timeouts.implicit_wait = 10
   @browser.manage.timeouts.page_load =10
#   $base_url = "practicalsqa.net"
#   @browser.get "http://www.#{$base_url}"
 end

After do
  @browser.quit
end