@schedule @login @all
Feature: Schedule Consults
  As a clinic user
  I want to select a clinic and schedule a consult
  In order to pacients have a consult with a doctor
  
  Background:
    Given I select a Clinic
    And I select the Schedule menu
    When I am on Schedule page

  @load_schedule_page
  Scenario: See Schedule was loaded
    Then I see the new schedule option is visible
    And I see the filters are visible
    And I see the list options were loaded
    When I click on Filter
    Then I see on page "Procedimento"

  @new_schedule @smoke_test
  Scenario: Schedule a consult
    Given I click on new Schedule
    And I fill the schedule form
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"
    And I see page api "api.whatsapp"

  @check_conflict_schedule
  Scenario: Schedule a consult
    Given I click on new Schedule
    And I fill the schedule form
    And I click to save the schedule
    Then I see the success message "Já existe agendamento em aberto para esta data e horário."

  @edit_schedule @smoke_test
  Scenario: Edit a Schedule
    Given I click on Today
    And I click on the consult
    And I click on the edit
    And I edit the schedule form
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"

  @delete_schedule @smoke_test
  Scenario: Delete a Schedule
    Given I click on Today
    And I click on the consult
    And I click delete
    Then I confirm the deletion
    And I see on page "Não encontramos agendamentos neste período de data."

   @new_schedule_check_colors_status
  Scenario: New Schedule - Check Colors
    Given I click on new Schedule
    And I fill the schedule form
    And I uncheck email and wpp
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"
    Given I click on Today
    And I click on the consult
    And I check the status available for a later date
    And I see "confirmacao" in the color of my status
    And I change schedule status - "1"
    And I see "confirmado" in the color of my status
    And I change schedule status - "4"
    And I see "ausente" in the color of my status
    And I change schedule status - "5"
    And I see "remarcado" in the color of my status
    And I close modal shedule
    And I click on the consult
    And I click on the edit1
    And I back time schedule
    And I click to save the schedule
    And I check -week- calendar panel was loaded
    And I check -today- calendar panel was loaded
    And I click on the consult
    And I check the status available for a expired date
    And I change schedule status - "2"
    And I see "nao-realizado" in the color of my status
    And I change schedule status - "3"
    And I confirm cancel a schedule
    And I see "cancelado" in the color of my status

  @check_expired_email_schedule
  Scenario: Check expired schedule by confirmation email
    Given I click on new Schedule
    And I fill the schedule form
    And I set the current date on the schedule form
    And I click to save the schedule
    And I see the success message "Salvo com sucesso"
    And I see page api "api.whatsapp"
    And I close the new window
    And I acess the last email in mailinator with 'testepaciente'
    Then I see expired schedule by my email

  @new_schedule_check_patient
  Scenario: Extra validations to add patient
    Given I click on new Schedule
    And I click on new patient -schedule-
    And I save the patient
    And I see on page "Nome Completo é obrigatório"
    #And I see notice to required fields "Data de nascimento é obrigatório"
    And I see on page "E-mail é obrigatório"
    Then I see on page "Celular é obrigatório"

  @back_to_default_schedule @smoke_test
  Scenario: Delete a Patient
    Given I select the Patients menu
    And I remove "1" patients

  @back_to_default_schedule
  Scenario: Delete Four Patient
    Given I select the Patients menu
    And I remove "3" patients
    Then I don't see the patient on the list