@schedule_config @login @all
Feature: Schedule Configuration
  As a doctor
  I want to view and edit the Schedule configuration

  Background:
    Given I select a Clinic
    And I select the Setup menu
    And I select the Schedule Settings submenu

  @valid_checks
  Scenario: Valid Checks
    Then I Valid all Checkboxs
    When I click input default view
    Then I see on page "Mês"
    And I see on page "Semana"
    And I see on page "Dia"
    And I see on page "Lista por Mês"
    And I see on page "Lista por Semana"
    And I see on page "Lista por Dia"

  @valid_edit
  Scenario: Valid edits
    Given I fill the schedule Settings form
    And I save the Schedule Configuration
    Then I see the success message "Salvo com sucesso"

  @new_procedure @smoke_test
  Scenario: New Procedure
    Given I click New Procedure
    And I fill the Procedure - Schedule Settings form
    When I save the Procedure Schedule Configuration
    Then I see the success message "Salvo com sucesso"
    And I see on page "New Procedure"
    When I click delete New Procedure
    And I click to continue delete
    Then I see the success message "Excluído com sucesso"
    