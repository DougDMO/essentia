@food_plan @login @all
Feature: Food Plan

  Background:
    Given I select a Clinic
    And I'm on Food Plan page

  @food_plan_create
  Scenario: Create a Food Plan
    Given I fill new Food Plan
    Then I see on page "Micronutrientes"
    When I save the new Food Plan
    Then I see the success message "Plano Alimentar salvo"
    And I see the Food Plan in list

  @food_plan_edit
  Scenario: Edit a Food Plan
    Given I select the first Food Plan to update
    When I update the Food Plan
    When I save the new Food Plan
    Then I see the success message "Plano Alimentar salvo"
    And I see the update Food Plan on the Food list

  @food_plan_search_edit
  Scenario: Search and Edit a Food Plan
    Given I search for the Food Plan created
    And I select the first Food Plan to update
    When I update the Food Plan
    And I save the new Food Plan
    Then I see the success message "Plano Alimentar salvo"
    And I see the Food Plan in list

  @food_plan_view
  Scenario: Search and Edit a Food Plan
    Given I search for the Food Plan created
    And I select the first Food Plan to view
    Then I see on page "Plano Alimentar"

  @food_plan_delete
  Scenario: Delete a Food Plan
    Given I search for the Food Plan created
    When I select the first Food Plan to delete
    And I click to continue delete
    Then I see the success message "Excluído com sucesso"
    And I don't see the Food Plan in list