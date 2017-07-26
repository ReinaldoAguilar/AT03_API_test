Feature: daily activities

  Background: Turn on the computer
    Given Having a computer in the lab
    When the cables are connected
    And press the power button
    Then the computer could be turned on

  Scenario: Register my daily report
    Given that you have open the registration template
    When to fill out the form
    Then fill report

  Scenario: Send a email
    Given that you have open the email page
    When  Fill in the fields:
      | email              |
      | luis@homail.com    |
      | maria@homail.com   |
      | nicolas@homail.com |
    Then Fill in the fields should look like this:

      | email              |
      | luis@homail.com    |
      | maria@homail.com   |
      | nicolas@homail.com |

