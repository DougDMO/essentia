@sick_note_colab @login_colab @all
Feature: Sick Note Model Collaborator

  Background:
    Given I'm on Sick Note Model page

  @sick_note_model_create
  Scenario: Create a Sick Note Model
    Given I fill new Sick Note model Colab
    When I save the sick note model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the sick note list

  @sick_note_model_edit
  Scenario: Edit a Sick Note Model
    Given I search for the sick note created
    And I select the first sick note model to update
    When I update the sick note model Colab
    When I save the sick note model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the sick note list

  @sick_note_model_duplicate
  Scenario: Duplicate a Sick Note Model
    Given I search for the sick note created
    And I select the first sick note model to view
    When I click to duplicate
    And I update the sick note model Colab
    And I save the sick note model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the sick note list  

  @sick_note_model_delete
  Scenario: Delete a Sick Note Model
    Given I search for the sick note created
    And I select the first sick note model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"

  @sick_note_model_delete
  Scenario: Delete a Sick Note Model
    Given I search for the sick note created
    And I select the first sick note model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the sick note list