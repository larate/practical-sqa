class ContactMe
  include PageAction
  PAGE_LOADED = {xpath: "//h1[@class = 'entry-title' and text() = 'Contact Me']"}
  COMENT_FIELD = {id: "comment"}
  POST_COMM_BUTTON = {id: 'submit'}

  def visit
    url = "http://www.old.practicalsqa.net/contact-me/"
    @browser.navigate.to url

  end

  def page_loaded
    @browser.find_element(PAGE_LOADED)
  end

  def write_comment (comment)
    @browser.find_element(COMENT_FIELD).send_keys (comment)
    # puts "#{comment}"
  end

  def click_button
   @browser.find_element(POST_COMM_BUTTON).click

  end













  end