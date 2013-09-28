@prada
Feature: Email notification feature
  In order to be reminded of upcoming shoe releases
  As a user of the Shoe Store
  I want to be able to submit my email address

Scenario: User is able to register for email notifications
  When I sign up for email notifications
  Then I should see the email sign up success message

  When I sign up for email notifications using an invalid email address
  Then I should not see the email sign up succsess message