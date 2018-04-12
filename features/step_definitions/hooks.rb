

# local variable
path_to_propertie_file = "./data/configuration.properties"
# properties = load_properties(path_to_propertie_file)

# instance variable
# @var

# global variable
@browser

# Then /^Open browser$/ do
Before do
  puts "run method 'Before'"

  # path_to_propertie_file
  properties = load_properties(path_to_propertie_file)

  # os = Launchy::Application.new.host_os_family.to_s # => :windows, :darwin, :nix, or :cygwin
  # if Launchy::Application.new.host_os_family.to_s.include? ":Darwin"
  os = Selenium::WebDriver::Platform.os.to_s
  if (os.include? "mac")
    if properties["browser"] == "chrome"
      @browser = Selenium::WebDriver.for :chrome, driver_path: properties["driver_path_mac_chrome"]
    else
      @browser = Selenium::WebDriver.for :firefox, driver_path: properties["driver_path_mac_mozilla"]
    end
  # elsif Launchy::Application.new.host_os_family.to_s.include? ":Windows"
  elsif (os.include? "win")
    if properties["browser"] == "chrome"
      @browser = Selenium::WebDriver.for :chrome, driver_path: properties["driver_path_win_chrome"]
    else
      @browser = Selenium::WebDriver.for :firefox, driver_path: properties["driver_path_win_mozilla"]
    end
  end

  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load =10
  @browser.navigate.to properties["url"]
end

# Then /^Close browser$/ do
After do
  puts "run method 'After'"

  @browser.quit
end

def load_properties(properties_filename)
  properties = Hash.new

  File.open(properties_filename, 'r') do |properties_file|
    properties_file.read.each_line do |line|
      line.strip!
      if (line[0] != ?# and line[0] != ?=)
        i = line.index('=')
        if (i)
          properties[line[0..i - 1].strip] = line[i + 1..-1].strip
        else
          properties[line] = ''
        end
      end
    end
  end

  return properties
end

#=begin
#=end