

Given(/^I navigate to Contact Me page$/) do
  @contactme_page.visit
  puts "WebDriver has been created"
end

When(/^I verify the Contact Me page loaded$/) do
 @contactme_page.page_loaded
end

Then(/^I write my comment "([^"]*)"$/) do |comment|
  @contactme_page.write_comment(comment)
end



And(/^I click on Post Comment button$/) do
  @contactme_page.click_button
 sleep 2
end

#---------Scenario: TC1 Verify links for Lessons are presents in Begginnig Selenium Classes from Home page
Given(/^user is on the practicalsqa\.net homepage$/) do
  url = "http://www.practicalsqa.net"
  @browser.navigate.to url
end

And(/^click on the picture Beginning Selenium Classes$/) do
  @browser.find_element(xpath:"//h1[@class='entry-title']/a[.='Beginning Selenium Classes']").click
  sleep 2
end

Then(/^redirected to http:\/\/www\.practicalsqa\.net\/beginning\-selenium\-classes\/ password is not required$/) do
  actual_head=@browser.find_element(xpath:"//h1[@class='entry-title']").text
  expected_head = "Beginning Selenium Classes"
  raise "Actual is #{actual_head}, but expected: #{expected_head}" unless expected_head==actual_head
  puts actual_head
end

Then(/^user is able to see list of twelve links for Lessons:$/) do |table|
  # table.hashes.keys # => [:Lesson 1 - Introduction to Selenium/Cucumber/Ruby]
  expected_lessons_list=table.raw
  actual_lesson_list=@browser.find_elements(xpath:"//ul[@class='fancylist fancylist-check-circle fancylist-1b93c7']/li")
  i=0
  for lesson in expected_lessons_list
    expected=lesson.to_s[2..lesson.to_s.size.to_i-3]
    actual=actual_lesson_list[i].text
#    puts "expected: #{expected}, actual: #{actual}"
    i=i+1
    raise "Actual: #{actual}, but expected: #{expected}" unless actual==expected
  end
end


