Feature: How We Help Page
@run
  Scenario: Navigate to How We Help Page
    Given I am on the "home" page
    And I navigate to page
    When I click on the "find out how button"
    And I am on the "how we help" page
    Then I see the "how we help header"