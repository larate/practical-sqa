@wip1
Feature: Contactme

  Scenario: Leaving a Comment
    Given I navigate to Contact Me page
    When I verify the Contact Me page loaded
    Then I write my comment "Hello world! This is Selenium test."
    And I input my name "John Smith"
    Then I input my email address "my.email@gmail.com"
    And I input my web site url "www.my_web_url.com"
    Then I check subscribe checkbox
    And I click on Post Comment button

@run1
  Scenario: TC1 Verify links for Lessons are presents in Begginnig Selenium Classes from Home page
    Given user is on the practicalsqa.net homepage
    And click on the picture Beginning Selenium Classes
    Then redirected to http://www.practicalsqa.net/beginning-selenium-classes/ password is not required
    And user is able to see list of twelve links for Lessons:
      |Lesson 1 – Introduction to Selenium/Cucumber/Ruby|
      |Lesson 1 – part 2|
      |Lesson 2 – Set up framework (webdriver, Ruby API, Cucumber, RubyMine)+ first test case – link to material|
      |Lesson 3 – Different types of xpaths (Absolute and relative)Special characters|
      |Lesson 4 – Variables|
      |Lesson 5 – Variables + Global variable|
      |Lesson 6 – Advance xpaths|
      |Lesson 7 – Advance xpaths conditions Before and After hooks|
      |Lesson 8 – Explicit and Implicit waits , conditions|
      |Lesson 9 – Loops|
      |Lesson 10 – Loops|
      |Lesson 11 – Different browsers, tagging, debugging|