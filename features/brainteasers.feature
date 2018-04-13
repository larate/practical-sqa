Feature: Brainteasers testing

    @brain
  Scenario Outline: Checking links for brainteasers
    Given I navigate to brainteasers page
    And I verify the brainteasers page loaded
    When I click on brainteasers "<title>"
    Then I verify brainteaser title "<text_p>" on the loaded page
    Examples:
      | title            | text_p                                   |
      | Nested Selectors | Beginning Brainteaser — Nested Selectors |
      |Beginning Conditionals| Beginning Brainteaser — Conditionals |
      |Beginning Conditionals #2|Beginning Brainteaser — Conditionals p. 2 |
      |Beginning Conditionals #3  | Beginning Brainteaser — Conditionals p. 3 |
      |Find number of patients| Beginning brainteaser – Find number of patients admitted to Good Health Clinic |

