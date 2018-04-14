Feature: Basic Authentication
     @wip
  Scenario: User with valid credentials can login
       Given I open a browser
       When I login with "larissa" username and "larissa12" passwor
       When I verify the Practical SQA page loaded
