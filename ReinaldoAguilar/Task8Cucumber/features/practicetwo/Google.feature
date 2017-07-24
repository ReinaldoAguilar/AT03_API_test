Feature: Google Serarch
  'When I go to the Google search page, and search a word,
  my result of my search is a summary.'
  Scenario:Using google search with But
    When I have gone to the Google Search page
    * I enter the search "House" to the search field
    *  I enter the search "Black" to the search field
    * click the Search Button
    * "House Black" should be mentioned in the results

  Scenario:Using google search with But
    When I have gone to the Google Search page
    When I enter the search "House" to the search field
    But  I enter the search "" to the search field
    And click the Search Button
    Then "House" should be mentioned in the results
