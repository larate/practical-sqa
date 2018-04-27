class BrainPage
<<<<<<< HEAD
  include PageAction


  def visit
    url= "http://www.old.practicalsqa.net/xpath-brainteasers-and-exercises/"
    @browser.navigate.to url
  end
=======
include PageAction
# PAGE_LOADED ={xpath: "//li/a[text()='Nested Selectors']"}

def visit
url= "http://www.old.practicalsqa.net/xpath-brainteasers-and-exercises/"
@browser.navigate.to url
end
>>>>>>> b8c01c2b11b61e60ce0fc010333f6077fab3bd1d

  def page_loaded
    @browser.find_element(xpath: "//li/a[text()='Nested Selectors']")
  end

  def click_brainteaser (title)
<<<<<<< HEAD

    elemnt= @browser.find_element(xpath: "//li/a[text() = '#{title}']")
    elemnt.click
  end

  def brain_title
    element = @browser.find_element(xpath: "//h1[@class = 'entry-title']")

  end


=======
    elemnt= @browser.find_element(xpath: "//li/a[text() = '#{title}']")
    elemnt.click
  end
def brainteaser_title
element = @browser.find_element(xpath: "//h1[@class = 'entry-title']")

  end

>>>>>>> b8c01c2b11b61e60ce0fc010333f6077fab3bd1d
end