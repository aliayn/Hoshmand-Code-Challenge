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

  Scenario: Unit selection
    Given I am on the home screen
    And the units have loaded
    When I select a different unit
    Then the unit content should update
    And the selected unit should be highlighted

  Scenario: Error handling
    Given I am on the home screen
    When there is an error loading units
    Then I should see an error message
    And I should see a retry button
    When I tap the retry button
    Then it should attempt to load units again 