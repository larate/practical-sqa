class BrainPage
  include PageAction


  def visit
    url= "http://www.old.practicalsqa.net/xpath-brainteasers-and-exercises/"
    @browser.navigate.to url
  end

  def page_loaded
    @browser.find_element(xpath: "//li/a[text()='Nested Selectors']")
  end

  def click_brainteaser (title)

    elemnt= @browser.find_element(xpath: "//li/a[text() = '#{title}']")
    elemnt.click
  end

  def brain_title
    element = @browser.find_element(xpath: "//h1[@class = 'entry-title']")

  end


end