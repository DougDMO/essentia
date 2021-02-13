@schedule_colab @login_colab @all
Feature: Schedule Consults - Collaborator
  As a Collaborator user
  I want to select a clinic and schedule a consult
  In order to pacients have a consult with a doctor

  @load_schedule_page
  Scenario: See Schedule was loaded
    Given I select the Schedule menu
    When I am on Schedule page
    Then I see the new schedule option is visible
    And I see the filters are visible
    And I see the list options were loaded

  @new_schedule
  Scenario: Schedule a consult
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on new Schedule
    And I fill the schedule form
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"
    And I see page api "api.whatsapp"

  @check_confirm_email_schedule
  Scenario: Check schedule by confirmation email
    Given I select the Schedule menu
    When I am on Schedule page
    Given I acess the last email in mailinator with 'testepaciente'
    Then I see and confirm the schedule by my email

  @edit_schedule
  Scenario: Edit a Schedule
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on the consult
    And I click on the edit
    And I edit the schedule form
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"

  @delete_schedule
  Scenario: Delete a Schedule
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on the consult
    And I click delete
    Then I confirm the deletion
    And I see on page "Organize a sua clínica criando seus agendamentos aqui."

  @new_schedule_check
  Scenario: Schedule a consult with extras validations
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on new Schedule
    And I fill the schedule form with validations extras
    And I click to save -validation- the schedule
    And I see the success message "Selecione um procedimento"
    And I see the success message "Informe uma data válida."
    And I click to save -validation- the schedule
    And I see the success message "Informe o horário inicial"
    And I see the success message "Informe o horário final"
    And I click to save -validation- the schedule
    And I see the success message "Selecione um paciente cadastrado ou cadastre um novo"
    And I fill the schedule form with validations
    And I click to save the schedule
    Then I see the success message "Salvo com sucesso"

  @edit_later_date_schedule
  Scenario: Edit date a Schedule
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on the consult
    And I click on the edit
    And I edit schedule date +2
    And I click to save the schedule
    Then I see the edit notice
    And I see on page "Organize a sua clínica criando seus agendamentos aqui."

  @edit_previous_date_schedule
  Scenario: Edit date a Schedule
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on 2 dates to the right
    And I click on the consult
    And I click on the edit
    And I edit schedule date -1
    And I click to save the schedule
    Then I see the edit notice
    And I see on page "Organize a sua clínica criando seus agendamentos aqui."

  @edit_actual_date_schedule
  Scenario: Edit date a Schedule
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on 1 dates to the right
    And I click on the consult
    And I click on the edit
    And I edit schedule date
    And I click to save the schedule
    #Then I see the edit notice
    Then I dont see the edit notice
    And I see on page "Organize a sua clínica criando seus agendamentos aqui."

  @delete_schedule_editing
  Scenario: Delete a schedule by editing
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on Today
    And I click on the consult
    And I click on the edit
    And I click delete by editing
    Then I confirm the deletion
    And I see on page "Organize a sua clínica criando seus agendamentos aqui."

  @new_schedule_check_colors
  Scenario: New Schedule - Check Colors
    Given I select the Schedule menu
    When I am on Schedule page
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
    And I change schedule status - "2"
    And I see "nao-realizado" in the color of my status
    And I change schedule status - "3"
    And I confirm cancel a schedule
    And I see on page "Consulta"

  @check_expired_email_schedule
  Scenario: Check expired schedule by confirmation email
    Given I select the Schedule menu
    When I am on Schedule page
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
    Given I select the Schedule menu
    When I am on Schedule page
    Given I click on new Schedule
    And I click on new patient -schedule-
    And I save the patient
    And I see on page "Nome Completo é obrigatório"
    #And I see notice to required fields "Data de nascimento é obrigatório"
    And I see on page "E-mail é obrigatório"
    Then I see on page "Celular é obrigatório"

  @back_to_default_schedule
  Scenario: Delete Four Patient
    Given I select the Schedule menu
    When I am on Schedule page
    Given I select the Patients menu
    And I remove "4" patients
    Then I don't see the patient on the list

  @remove_permissions_colab
  Scenario: Remove Collaborator Permissions
    And I click to logout - Agenda
    And I go to the login page
    And I fill valid credential
    And I click to login
    Given I select a Clinic
    And I select the Clinics menu
    And I select the Employees submenu
    And I edit Employees
    And I click edit permissions Employees
    And I click schedule permissions
    And I click patient permissions
    And I click model permissions
    And I click to save permissions
    Then I see the success message "Salvo com sucesso"

  @valid_nopermissions_colab
  Scenario: Validates Collaborator no Permissions in menus
    #Given I see on page "Você não possui permissão de Acesso."
    #Then I dont see schedule menu
    And I dont see patient menu
    And I dont see model menu

  @add_permissions_colab
  Scenario: Add Collaborator Permissions
    And I click to logout - Agenda
    And I go to the login page
    And I fill valid credential
    And I click to login
    Given I select a Clinic
    And I select the Clinics menu
    And I select the Employees submenu
    And I edit Employees
    And I click edit permissions Employees
    And I click schedule permissions
    And I click patient permissions
    And I click model permissions
    And I click to save permissions
    Then I see the success message "Salvo com sucesso"

  @valid_permissions_colab
  Scenario: Validates Collaborator have Permissions in menus
    Then I see schedule menu
    And I see patient menu
    And I see model menu