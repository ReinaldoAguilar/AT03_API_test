Feature: System for airport
  Scenario: Airport
    Given the flight EZY4567 is leaving today
    When Registering the "CBBA" Path
    And register the arrival "2:30"
    Then the flight arrives at "CBBA"

  Scenario: Airport
    Given the flight C038 is leaving today
    When Registering the "CBBA" Path
    And register the arrival "2:30"
    Then the flight arrives at "CBBA"

  Scenario: Airport
    Given the flight BA01618 is leaving today
    When Registering the "CBBA" Path
    And register the arrival "2:30"
    Then the flight arrives at "CBBA"