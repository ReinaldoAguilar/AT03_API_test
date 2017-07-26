Feature: Eat and Pay

  Scenario: Eat apple
    Given you have 100 apple
    When you eat 1 apple in my classroom
    And you eat 2 apples in my classroom
    And you eat 2 apples in my classroom, 3 apples in you house
    And you eat four apples in the square
    Then The apple balance could be 92


  Scenario: account in the bank
    Given I have deposited $500 in my Account
    When I have that pay $50 with credit
    And I have that pay $50 with money
    And I have that pay $50 with after

