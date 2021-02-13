@anamnese @login @all
Feature: Anamnese Model

  Background:
    Given I select a Clinic
    And I'm on Anamnese Model page

  @anamnese_model_create
  Scenario: Create a Anamnese Model
    Given I fill new Anamnese Model
    When I save the new Anamnese Model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the anamnese list

  @anamnese_model_edit
  Scenario: Edit a Anamese Model
    Given I select the first anamnese model to update
    When I update the anamnese model
    When I save the new Anamnese Model
    Then I see the success message "Salvo com sucesso"
    And I see the update model on the anamnese list

  @anamnese_model_search_edit
  Scenario: Search and Edit a Anamnese Model
    Given I search for the anamnese created 
    And I select the anamnese to update
    When I update the anamnese model
    And I save the new Anamnese Model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the anamnese list
  
  @anamnese_model_duplicate
  Scenario: Duplicate a Anamnese Model
    Given I search for the anamnese created
    And I select the first anamnese model to view
    When I click to duplicate
    And I update the anamnese model
    And I save the new Anamnese Model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the anamnese list

  @anamnese_model_delete
  Scenario: Delete a Anamese Model
    Given I search for the anamnese created
    When I select the first anamnese model to delete 
    And I click to continue
    Then I see the success message "Excluído com sucesso"

  @back_to_default_anamnese
  Scenario: Delete 1 Anamese Model
    Given I search for the anamnese created
    When I select the first anamnese model to delete
    And I click to continue
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the anamnese list