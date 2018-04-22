module PageActions
  def initialize(browser)
    @browser = browser
  end

  def wait_for (seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until{yield}
  end

  def switch_to frame
    @browser.switch_to.frame frame
  end

  def switch_to_default
    @browser.switch_to.default_content
  end

  def switch_to_window
    @browser.switch_to.window @browser.window_handles.last
  end

  def scroll_to_bottom
    @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  end

  def page_title
    @browser.title
  end

  def page_url
    @browser.current_url
  end

  def mouse_move_to(element)
    @browser.action.move_to(element).perform
  end

end