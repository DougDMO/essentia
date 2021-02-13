@food @login @all
Feature: Food

  Background:
    Given I select a Clinic
    And I'm on Food page

  @food_create
  Scenario: Create a Food
    Given I fill new Food
    When I save the new Food
    Then I see the success message "Alimento salvo"
    And I see the Food in list

  @food_edit
  Scenario: Edit a Food
    Given I select the first Food to update
    When I update the Food
    When I save the new Food
    Then I see the success message "Alimento salvo"
    And I see the update Food on the Food list

  @food_search_edit
  Scenario: Search and Edit a Food
    Given I search for the Food created
    And I select the first Food to update
    When I update the Food
    And I save the new Food
    Then I see the success message "Alimento salvo"
    And I see the Food in list

  @food_delete
  Scenario: Delete a Food
    Given I search for the Food created
    When I select the first Food to delete
    And I click to confirm continue
    Then I see the success message "Alimento excluído"
    And I don't see the Food in list