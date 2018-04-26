   module PageAction
     def initialize(browser)
       @browser =browser
     end
     def
       wait_for (seconds)
       @browser.switch_to.frame frame
     end





   end