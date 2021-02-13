@recipe @login @all
Feature: Recipe Model

  Background:
    Given I select a Clinic
    And I'm on Recipe Model page

  @food_plan_create
  Scenario: Create a Food Plan
    And I'm on Food Plan page - recipe
    Given I fill new Food Plan
    When I save the new Food Plan
    Then I see the success message "Plano Alimentar salvo"
    And I see the Food Plan in list

  @recipe_model_create
  Scenario: Create a Recipe Model
    Given I fill new Recipe Model
    When I save the new Recipe Model
    Then I see the success message "Receita cadastrada"
    And I see the model on the Recipe list

  @recipe_model_search_edit
  Scenario: Search and Edit a Recipe Model
    Given I search for the Recipe created
    And I select the first Recipe model to update
    When I update the Recipe model
    And I save the new Recipe Model
    Then I see the success message "Receita editada"
    And I see the model on the Recipe list
  
  @recipe_model_duplicate
  Scenario: Duplicate a Recipe Model
    Given I search for the Recipe created
    And I select the first Recipe model to view
    When I click to duplicate Recipe Model
    And I update the Recipe model
    And I save the new Recipe Model
    Then I see the success message "Receita cadastrada"
    And I see the model on the Recipe list

  @recipe_model_delete
  Scenario: Delete a Recipe Model
    Given I search for the Recipe created
    When I select the first Recipe model to delete
    And I click to continue delete
    Then I see the success message "Excluído com sucesso"

  @back_to_default_recipe
  Scenario: Delete 1 Recipe
    Given I search for the Recipe created
    When I select the first Recipe model to delete
    And I click to continue delete
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the Recipe list

  @food_plan_delete
  Scenario: Delete a Food Plan
    And I'm on Food Plan page - recipe
    Given I search for the Food Plan created
    When I select the first Food Plan to delete
    And I click to continue delete
    Then I see the success message "Excluído com sucesso"
    And I don't see the Food Plan in list