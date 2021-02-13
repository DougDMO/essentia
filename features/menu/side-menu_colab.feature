@side-menu_colab @login_colab @all
Feature: Side Menu Collaborator
  As a Collaborator | Steakeholder with Permission | Steakeholder without Permission
  I want to see the side menu
  In order to access the functionalities that I have acess

  #Background:
    #Given I select a Clinic

  # #Menu "Agenda" (/schedule)
  @menu_schedule 
  Scenario: Acess the Schedule page 
    Given I select the Schedule menu
    Then I see the Schedule page

  # #Menu "Pacientes" (/patients)
  @menu_patients
  Scenario: Acess the Patients page 
    Given I select the Patients menu
    Then I see the Patients page

  # #Menu "Modelos > Anamnese" (/text-model/type/anamnese)
  @menu_models_anamnsese
  Scenario: Acess the Anamnese submenu 
    Given I select the Models menu
    When I select the Anamnese submenu
    Then I see the Anamnese page

  # #Menu "Modelos > Pedido de Exames" (/text-model/type/guia-exames)
  @menu_models_exams_guide
  Scenario: Acess the Exams Guide submenu 
    Given I select the Models menu
    When I select the Exams Guide submenu
    Then I see the Exams Guide page

  # #Menu "Modelos > Orientações" (/text-model/type/orientacao)
  @menu_models_guidance
  Scenario: Acess the Guidance submenu 
    Given I select the Models menu
    When I select the Guidance submenu
    Then I see the Guidance page

  # #Menu "Modelos > Laudos" (/text-model/type/laudos)
  @menu_models_report
  Scenario: Acess the Report submenu 
    Given I select the Models menu
    When I select the Report submenu
    Then I see the Report page

 # #Menu "Modelos > Atestado / Declaração" (/text-model/type/atestados)
  @menu_models_sick_note
  Scenario: Acess the Sick Note submenu 
    Given I select the Models menu
    When I select the Sick Note submenu
    Then I see the Sick Note page

 # #Menu "Modelos > Pré-consulta" (/quiz-model)
  @menu_models_pre_appointment
  Scenario: Acess the Pre Medical Appointment submenu
    Given I select the Models menu
    When I select the Pre Medical Appointment submenu
    Then I see the Pre Medical Appointment page

# #Menu "Clínicas > Clínicas" (/clinics)
  @menu_clinics
  Scenario: Acess the Clinics menu 
    Given I select the Clinics menu
    When I see the Clinics submenu
    Then I see the Clinics page

# #Menu "Configurações > Preferências de Usuário" (/user-settings)
 @menu_setup_user_settings
 Scenario: Acess the User Settings submenu 
  Given I select the Setup menu
  When I select the User Settings submenu
  Then I see the User Settings page

  # #Menu "Configurações > Configurações de Agenda" (/schedule-configuration)
  @menu_setup_schedule-settings
  Scenario: Acess the Schedule Settings submenu 
    Given I select the Setup menu
    When I select the Schedule Settings submenu
    Then I see the Schedule Settings page

  # #Menu "Ajuda > Suporte"
   @menu_help_support
   Scenario: Acess the Support submenu
     Given I select the Support menu
     Then I see the Support page

  @remove_permissions_colab
  Scenario: Remove Collaborator Permissions
    And I click to logout - Agenda
    And I go to the login page
    And I fill valid credential automation
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

# #Menu "Clínicas > Clínicas" (/clinics)
  @menu_clinics
  Scenario: Acess the Clinics menu
    Given I select the Clinics menu
    When I see the Clinics submenu
    Then I see the Clinics page

   # #Menu "Configurações > Preferências de Usuário" (/user-settings)
  @menu_setup_user_settings
  Scenario: Acess the User Settings submenu
    Given I select the Setup menu
    When I select the User Settings submenu
    Then I see the User Settings page

  # #Menu "Ajuda > Suporte"
  @menu_help_support
  Scenario: Acess the Support submenu
    Given  I select the Support menu
    Then I see the Support page

  @add_permissions_colab
  Scenario: Add Collaborator Permissions
    And I click to logout - Agenda
    And I go to the login page
    And I fill valid credential automation
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