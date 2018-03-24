require "selenium-webdriver"
require "rspec"
# Before do
#   $base_url = "practicalsqa.net"
#   @browser.get "http://www.#{$base_url}"
# end

After do
  @browser.quit
end