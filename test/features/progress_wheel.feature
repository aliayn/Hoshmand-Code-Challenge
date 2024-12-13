Feature: Progress Wheel
  As a user
  I want to see and interact with a progress wheel
  So that I can navigate through different units

  Scenario: Display loading state
    Given the progress wheel is in loading state
    When the wheel is rendered
    Then I should see shimmer loading effects
    And I should see 5 shimmer items

  Scenario: Display units
    Given I have a list of 5 units
    When the wheel is rendered
    Then I should see all unit names
    And the middle unit should be selected
    And the middle unit should have full opacity

  Scenario: Select a unit
    Given I have a list of units
    And the wheel is rendered
    When I scroll to a new unit
    Then the selected unit should update
    And the onSelect callback should be called with the new unit
    And the selected unit should have full opacity
    And other units should have reduced opacity

  Scenario: Initial unit selection
    Given I have a list of units
    When the wheel is first rendered
    Then the middle unit should be selected
    And the onSelect callback should be called with the middle unit 