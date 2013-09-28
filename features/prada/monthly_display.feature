@prada
Feature: Monthly display of new releases
  In order to view upcoming shoes being released every month
  As a user of the Shoe store
  I want to be able to visit a link for each month and see the shoes being released

  Scenario:Month view displays a description of each shoe
    When  I select a month
    Then I should see a description of each shoe for that month

  Scenario: Month view displays an image of each shoe being released for that month
    When I select a month
    Then I should see an image displayed for each shoe

  Scenario: Each shoe should have suggested price
    When I select a month
    Then I should see pricing information on each of the shoes
