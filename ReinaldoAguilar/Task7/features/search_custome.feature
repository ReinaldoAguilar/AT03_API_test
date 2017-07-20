Feature: search customer

  Scenario: Search results should display a customer in the page search when pressing "enter"
    Given A  search CUstomer page
    When I enter the search "luis antelo"
    And I submit the search by pressing "enter"
    Then The search result is the customer that should contain the detail of custumer