@patient_colab @login_colab @all
Feature: Patient Collaborator
  As a Collaborator
  I want to register a new patient, edit and delete
  In order to manage this patient

  Background:
    Given I select the Patients menu
    When I am on Patient page

  @new_patient
  Scenario: Create a New Patient
    Given I click on new patient
    When I fill the patient form
    And I save the patient
    Then I see the patient saved on patient list
  
  @edit_patient
  Scenario: Edit a Patient
    Given I select the first patient to edit
    When I click on edit the patient profile
    And I edit the patient form
    And I save the patient
    And I click to back on patient list - Colaborador
    Then I see the patient saved on patient list

  @delete_patient
  Scenario: Delete a Patient
    Given I select the first patient to edit
    When I click on delete the patient profile 
    And I confirm to delete the patient
    Then I don't see the patient on the list

  @new_patient_full
  Scenario: Create a Full New Patient
    Given I click on new patient
    When I fill the patient form with extra validations
    And I click on second patient form
    And I fill the second patient form with extra validations
    And I click on third patient form
    And I fill the third patient form with extra validations - Colab
    And I save the patient
    Then I see the patient saved on patient list

  @edit_patient_full
  Scenario: Edit a Full Patient
    Given I research patient
    And I select the first patient to edit
    When I click on edit the patient profile
    And I fill the patient form with extra validations
    And I click on second patient form
    And I edit the second patient form with extra validations
    And I click on third patient form
    And I fill the third patient form with extra validations - Colab
    And I save the patient
    And I click to back on patient list - Colaborador
    Then I see the patient saved on patient list

  @new_schedule_by_edit_patient
  Scenario: Edit a Full Patient
    Given I select the first patient to edit
    When I click on new schedule by patient profile
    And I fill the schedule form only
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"

  @delete_patient_form
  Scenario: Delete a patient by editing the form
    Given I select the first patient to edit
    When I click on edit the patient profile
    And I click delete patient
    And I confirm to delete the patient
    Then I don't see the patient on the list