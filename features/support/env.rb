require "selenium-webdriver"
require "rspec"
driver_path =  File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")
# driver_path = "C:\Users\student\Desktop\repos\practical-sqa\drivers\chromedriver.exe"
puts  driver_path
my_usernam = "admin"
my_password  = "admin"
require_relative "../pages/page_actions.rb"

require_relative "../pages/page_actions.rb"

 Before do
   @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
   @browser.manage.timeouts.implicit_wait = 10
   @browser.manage.timeouts.page_load =10
    url = "http://www.old.practicalsqa.net/wp-login.php/"
    @browser.navigate.to url
   @browser.find_element(xpath: "//input[@id='user_login']").send_keys my_usernam
   @browser.find_element(xpath: "//input[@id='user_pass']").send_keys my_password
   @browser.find_element(xpath: "//input[@id='wp-submit']").click
<<<<<<< HEAD
   @brain_page =BrainPage.new @browser
   @contactme_page = ContactMe.new @browser

=======

   @brain_page = BrainPage.new @browser
>>>>>>> b8c01c2b11b61e60ce0fc010333f6077fab3bd1d
#   $base_url = "practicalsqa.net"
#   @browser.get "http://www.#{$base_url}"

 end


After do
  @browser.quit
end