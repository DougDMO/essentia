@pre_appointment @login @all
Feature: Pre Medical Appointment Model

  Background:
    Given I select a Clinic
    And I'm on Pre Medical Appointment Model page

  @pre_appointment_model_create
  Scenario: Create a Pre Medical Appointment Model
    Given I fill new pre appointment model
    When I click to save the pre appointment model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the pre appointment list

  @pre_appointment_model_edit
  Scenario: Edit a Pre Medical Appointment Model
    Given I search for the pre appointment created 
    And I select the first pre appointment model to update
    When I update the pre appointment model
    When I click to save the pre appointment model
    Then I see the success message "Salvo com sucesso"
    And I see the model updated on the pre appointment list

  @pre_appointment_model_delete
  Scenario: Delete a Pre Medical Appointment Model
    Given I search for the pre appointment created 
    And I select the first pre appointment model to delete
    When I click to continue delete
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the pre appointment list