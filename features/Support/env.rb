   require 'selenium-webdriver'
   require 'rspec'

   Before do
   path= "C:/Users/Angela/Desktop/repos/practical-sqa/drivers/chromedriver.exe"
   @browser = Selenium::WebDriver.for :chrome, driver_path: path
   end

   After do
      @browser.quit
   end