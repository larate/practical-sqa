@F3
@brain
Feature: Brainteasers

  @SC3.1
  @brain1
  Scenario Outline:: Checking xpath for brainteasers
    Given I navigate to "Brainteasers" page
    And I verify the brainteasers page loaded
    When I click on "<Link>"
    Then  I verify xpath "<Xpath>"

    Examples:
      | TestCaseID  | Link                                          | Xpath|
      |1            |Nested Selectors                               |//div[@class = 'september']/div[@class = 'irritating']/ul/li |
      |2            |Beginning Conditionals                         |//span[.='$25,000']/../a                                     |
      |3            |Beginning Conditionals #2                      |//span[.>'1950']/../span[.='Ford']/../a                      |
      |4            |Beginning Conditionals #3                      |//span[text()='1958']/../a                                   |
      |5            |Find number of patients                        |//*[.='Good Health Clinic']                                  |
      |6            |Find the patient                               |//birthtime[@value='19551217']/../../name/family             |
      #|7            |Find the rate                                  |//*[.='30-Year Fixed Rate']/../*[.='B']/../rate              |
