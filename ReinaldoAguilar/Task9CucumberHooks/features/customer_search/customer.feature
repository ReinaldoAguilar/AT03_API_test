Feature: Customer Search
  @some
  Scenario Outline: search of a total priced for a list clients

    Given Go to the customer search page
    When I enter the Name customer "<name>"
    And  I enter the ID Customer "<id>"
    And  I enter the  Total priced "<total priced>"
    Examples:
      | name  | id     | total priced |
      | juana | 1234   | $100         |
      | luis  | 123456 | $200         |
  @any
  Scenario: search for a client

    Given Go to the customer search page
    When I enter the Name customer "luis"
    And  I enter the ID Customer "123456"
    And  I enter the  Total priced "$200"


