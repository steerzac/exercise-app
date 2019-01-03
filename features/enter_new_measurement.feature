Feature: enter a new measurement

  As a user
  So that I can track the following variants: weight, body fat, and calories burned daily
  I want to be able to log them

Scenario: I click on enter new measurements

  Given I am on the my measurements page
  And I press "Enter New Measurements"
  Then I should be on the enter measurements page
  
