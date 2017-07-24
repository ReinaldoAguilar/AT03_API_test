Feature: Gmail form

  Scenario Outline: Check email gmail form fields
    Given  A gmail form page
    When I enter the data "<name>"
    And I enter the data "<last>"
    And I enter the username "<username>"
    And I enter the password "<password>"
    And I enter the password "<confirm_password>"
    And I enter the birday "<birthday>"
    And I enter the gender "<gender>"
    And I enter the cellphone "<mobil_phone>"
    And I enter the currentEmail "<current_email>"

    Examples: Term and submission method combinations
      | name  | last   | username     | password  | confirm_password | birthday   | gender | mobil_phone | current_email                   |
      | luis  | lopez  | userLuis     | 1235678@K | 1235678@K        | 7/24/2009  | Male   | 7545422     | luis@fundacion-jala.org         |
      | maria | Colque | userMaria123 | 12345678N | 12345678N        | 19/02/2010 | Female | 79878411    | maria.angela@fundacion-jala.com |
