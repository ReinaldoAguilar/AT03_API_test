Feature:  Bank
 Scenario: Withdraw fixed amount 500
    Given I have $500 in my account
    When  I choose to withdraw the fixed amount of $50
    Then I should recive $50 cash
    And the blance of my account shoud be $450

  Scenario: Withdraw fixed amount 500
    Given I have $500 in my account
    When  I choose to withdraw the fixed amount of $450
    Then I should recive $450 cash
    And the blance of my account shoud be $50

  Scenario: Withdraw fixed amount 500
    Given I have $1500 in my account
    When  I choose to withdraw the fixed amount of $100
    Then I should recive $100 cash
    And the blance of my account shoud be $1400
