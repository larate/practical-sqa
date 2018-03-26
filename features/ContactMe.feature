@wip
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