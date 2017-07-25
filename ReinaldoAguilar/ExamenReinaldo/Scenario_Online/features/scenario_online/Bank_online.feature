Feature:  Bank

  Scenario Outline: Withdraw fixed amount 500
    Given I have <Balance> in my account
    When  I choose to withdraw the fixed amount of <Withdrawal>
    Then I should recive <Recived> cash
    And the blance of my account shoud be <Remaining>
    Examples:
      | Balance | Withdrawal | Recived | Remaining |
      | $500    | $50        | $50     | $450      |
      | $500    | $100       | $100    | $400      |