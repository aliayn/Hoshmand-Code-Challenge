Feature: Unit Content
  As a user
  I want to see unit content
  So that I can view learning materials

  Scenario: Display loading state
    Given the unit content is in loading state
    When the content is rendered
    Then I should see shimmer loading effects
    And I should see 5 shimmer items

  Scenario: Display unit content
    Given I have a unit with learning content
    When the content is rendered
    Then I should see the unit's learning content items
    And each item should have an icon
    And each item should have a description

  Scenario: Display empty state
    Given I have a unit with no learning content
    When the content is rendered
    Then I should see the empty state message

  Scenario: Display error state
    Given there is an error loading the unit content
    When the content is rendered
    Then I should see the error message
    And I should see a retry button 