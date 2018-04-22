class BrainPage
 # include PageActions
  def visit
    url= "http://www.old.practicalsqa.net/xpath-brainteasers-and-exercises/"
    @browser.navigate.to url
  end

def page_loaded
 wait_for(20){@browser.find_element(xpath: "//li/a[text()='Nested Selectors']")}
end

end