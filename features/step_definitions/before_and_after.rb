

# local variable
driver_path_darwin_mozilla = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/mozilla/geckodriver-v0.20/geckodriver"
driver_path_darwin_chrome = "/Users/admin/Documents/DevS-iOS/tools/selenium/geckodriver/chrome/chromedriver-v2.37/chromedriver"
url = "http://www.practicalsqa.net/"

# instance variable
# @var

# global variable
@browser

# Then /^Open browser$/ do
Before do
  puts "run method 'Before'"

  # puts Launchy::Application.new.host_os_family # => :windows, :darwin, :nix, or :cygwin
  if Launchy::Application.new.host_os_family.to_s.include? ":Darwin"
    driver_path = driver_path_darwin_mozilla
  elsif Launchy::Application.new.host_os_family.to_s.include? ":Windows"
    driver_path = driver_path_darwin_chrome
  end


  # $browser = Selenium::WebDriver.for :firefox
  @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path_darwin_chrome
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