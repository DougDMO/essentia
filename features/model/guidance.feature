@guidance @login @all
Feature: Guidance Model

  Background:
    Given I select a Clinic
    And I'm on Guidance Model page

  @guidance_model_create
  Scenario: Create a Guidance Model
    Given I fill new Guidance model
    When I save new Guidance model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the guidance list

  @guidance_model_edit
  Scenario: Edit a Guidance Model
    Given I select the first guidance model to update
    When I update the guidance model
    When I save new Guidance model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the guidance list

  @guidance_model_search_edit
  Scenario: Searcn and Edit a Guidance Model
    Given I search for the guidance created 
    And I select the guidance to update
    When I update the guidance model
    And I save new Guidance model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the guidance list

  @guidance_model_duplicate
  Scenario: Duplicate a guidance Model
    Given I search for the guidance created 
    And I select the first guidance model to view
    When I click to duplicate
    And I update the guidance model
    And I save new Guidance model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the guidance list  

  @guidance_model_delete
  Scenario: Delete a Guidance Model
    Given I search for the guidance created 
    And I select the first guidance model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"

  @guidance_model_delete
  Scenario: Delete a Guidance Model
    Given I search for the guidance created
    And I select the first guidance model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the guidance list