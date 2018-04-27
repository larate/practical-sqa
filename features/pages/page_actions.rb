module PageAction
  def initialize(browser)
    @browser = browser
  end

  def vait_for (seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until(yield)

  end

  def switch_to frame
    @browser.switch_to.frame frame

  end



end