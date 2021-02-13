@patient @login @all
Feature: Patient
  As a doctor
  I want to register a new patient, edit and delete
  In order to manage this patient

  Background:
    Given I select a Clinic
    And I select the Patients menu
    When I am on Patient page

  @new_patient @smoke_test
  Scenario: Create a New Patient
    Given I click on new patient
    Then I dont see on page "Compartilhar"
    When I fill the patient form
    And I save the patient
    Then I see the patient saved on patient list
  
  @edit_patient @smoke_test
  Scenario: Edit a Patient
    Given I select the first patient to edit
    When I click on edit the patient profile
    Then I see on page "Compartilhar"
    Given I edit the patient form
    And I save the patient
    And I click to back on patient list
    Then I see the patient saved on patient list

  @delete_patient @smoke_test
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
    And I fill the third patient form with extra validations
    And I save the patient
    Then I see the patient saved on patient list

  @send_pre_consult_wpp
  Scenario: Send Pre consulta wpp
    Given I select the first patient to edit
    When I click send pre consult on patient profile
    And I click to send Whatsapp
    And I fill pre consult form on patient profile
    And I click send pre consult wpp
    Then I see page api "api.whatsapp"

  @edit_patient_profile_form
  Scenario: Edit a Patient Profile Form
    Given I select the first patient to edit
    When I see the patient profile informations
    And I edit the profile patient form
    And I click to close patient profile
    Then I see the patient on patient list

  @check_hotfix_profile
  Scenario: Edit a Patient Profile Form
    Given I select the first patient to edit
    When I clear medical notes on profile patient form
    Then I see on page "Informações atualizadas"

  @edit_patient_full
  Scenario: Edit a Full Patient
    Given I research patient
    And I select the first patient to edit
    When I click on edit the patient profile
    And I fill the patient form with extra validations
    And I click on second patient form
    And I edit the second patient form with extra validations
    And I click on third patient form
    And I fill the third patient form with extra validations
    And I save the patient
    And I click to back on patient list
    Then I see the patient saved on patient list

  @send_pre_consult_email
  Scenario: Send pre consult Email
    Given I select the first patient to edit
    When I click send pre consult on patient profile
    And I click to send Email
    And I fill pre consult form on patient profile
    And I click send pre consult
    Then I see on page "Enviado com sucesso"

  @check_teleconsultation_email
  Scenario: Check teleconsultation
    Given I select the first patient to edit
    When I click start teleconsultation
    And I click on termo consentimento
    And I click on send email termo consentimento
    Then I see the success message "Termo de consentimento enviado com sucesso."

  @share_pre_consult
  Scenario: Share a Pre Consult with other Doctor
    Given I click on attendances from patient list
    And I click on share attendance
    And I check share Pre Consult
    And I select Doctor for share
    When I save share
    Then I see the success message "Salvo com sucesso"

  @check_share_pre_consult
  Scenario: Check share a Pre Consult with other Doctor
    And I'm not logged in - Clinics Page
    And I go to the login page
    And I acess with invited Doctor
    And I select a Invited Clinic
    When I select the Patients menu
    Then I click on pre consult from patient list

  @check_teleconsultation
  Scenario: Check teleconsultation
    Given I select the first patient to edit
    When I click start teleconsultation
    And I click on termo consentimento
    Then I see on page "Todos os procedimentos por telemedicina devem ser formalmente "
    When I click on meet
    Then I see page api ".google."
    And I close the new window
    Given I select the first patient to edit
    When I click start teleconsultation
    And I click on Whereby
    Then I see page api "whereby.com"
    And I close the new window
    Given I select the first patient to edit
    When I click start teleconsultation
    And I click on Whatsapp
    Then I see page api "api.whatsapp"
    And I close the new window
    Given I select the first patient to edit
    When I click start teleconsultation
    And I click termo consentimento
    And I send termo consentimento

  @new_schedule_by_edit_patient
  Scenario: New Schedule byg edit patient
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