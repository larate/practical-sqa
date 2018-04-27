<<<<<<< HEAD
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
=======
   module PageAction
     def initialize(browser)
       @browser =browser
     end
     def
       wait_for (seconds)
       @browser.switch_to.frame frame
     end





   end
>>>>>>> b8c01c2b11b61e60ce0fc010333f6077fab3bd1d
