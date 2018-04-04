

# local variable
driver_path_darwin_mozilla = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/mozilla/geckodriver-v0.20/geckodriver"
driver_path_darwin_chrome = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/chrome/chromedriver-v2.37/chromedriver"

driver_path_windows_mozilla = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/mozilla/geckodriver-v0.20/geckodriver.exe"
driver_path_windows_chrome = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/chrome/chromedriver-v2.37/chromedriver.exe"

driver_type = "chrome"
# driver_type = "firefox"

url = "http://www.practicalsqa.net/"

# instance variable
# @var

# global variable
@browser

# Then /^Open browser$/ do
Before do
  puts "run method 'Before'"

  # puts Launchy::Application.new.host_os_family.to_s # => :windows, :darwin, :nix, or :cygwin
  if Launchy::Application.new.host_os_family.to_s.include? ":Darwin"
    if driver_type == "chrome"
      @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path_darwin_chrome
    else
      @browser = Selenium::WebDriver.for :firefox, driver_path: driver_path_darwin_mozilla
    end
  elsif Launchy::Application.new.host_os_family.to_s.include? ":Windows"
    if driver_type == "chrome"
      @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path_windows_chrome
    else
      @browser = Selenium::WebDriver.for :firefox, driver_path: driver_path_windows_mozilla
    end
  end

  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load =10
  @browser.navigate.to url
end

# Then /^Close browser$/ do
After do
  puts "run method 'After'"

  @browser.quit
end

#=begin
#=end