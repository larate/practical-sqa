
Given(/^User on the PracticalSQA Home page$/) do
  # use before method
end

Then(/^Click on the "([^"]*)" link under the image$/) do |text|
  # @browser.find_element({xpath: "//a[text() = '#{text}']"})
  @browser.find_element(xpath: "//a[text() = '#{text}']").click
=begin
  select_list = wait.until {
    element = @browser.find_element(xpath: "//a[text() = '#{text}']")
    element if element.displayed?
  }
  @element.click
=end
end

Then(/^Navigate to the page "([^"]*)"$/) do |page|
  @browser.find_element(xpath: "//a[text() = '#{page}']").click
end

# Then(/^Find the question "Why do you want to be a QA engineer\? Why QA\?"$/) do |arg|
Then(/^Find the question "([^"]*)"$/) do |question|

  puts("'#{question}'")

  # find quesion - dt
  dt_list=@browser.find_elements(xpath: "//dl[@class = 'accordion']/dt")

  # we need to find number of question = #{question}
  @num = -1
  for i in 0..dt_list.size
    if dt_list[i].text.include? question
      @num = i
      break
    end
  end
end

# And(/^Check the answer "([^"]*)"$/) do |expected|
And(/^Check the answer "([^"]*)" containt "([^"]*)"$/) do |id, expected|
  # find answer - dd with id = @num
  if ((id.to_i - 1) == @num)
      actual = @browser.find_elements(xpath: "//dl[@class = 'accordion']/dd")[@num].text
      raise "Actual is #{actual}, but expected: #{expected}" unless actual.include? expected
  else
    raise "Failed: id='#{id-1}' isn't equal num='#{@num}', expected: #{expected}" unless false
  end
end

