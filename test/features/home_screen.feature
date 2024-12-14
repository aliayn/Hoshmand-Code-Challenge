Feature: Home Screen
  As a user
  I want to use the home screen
  So that I can access units and their content

  Scenario: Initial load
    Given I am on the home screen
    When the screen loads
    Then I should see the progress wheel
    And I should see the unit content area
    And both should show loading states