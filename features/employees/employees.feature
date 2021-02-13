@employees @login @all
Feature: Employees
  As a doctor
  I want to register a new employees, edit and delete

  Background:
    Given I select a Clinic
    And I select the Clinics menu
    When I select the Employees submenu
    And I am on Employees page

  @new_employees @smoke_test
  Scenario: Create a New Employees
    Given I click on new employees
    When I fill the employees form
    And I save the employees
    Then I see the success message "Salvo com sucesso"
    And I see the employees saved on employees list

  @edit_employees @smoke_test
  Scenario: Edit a Employees
    When I research employees
    And I select the first employees to edit
    And I edit the employees form
    And I save the employees
    Then I see the success message "Salvo com sucesso"
    When I click to back on employees list
    Then I see the employees edit saved on employees list

  @delete_employees @smoke_test
  Scenario: Delete a Employees
    When I research employees
    Given I select the first employees to delete
    And I click to confirm delete a employees
    Then I see the success message "Excluído com sucesso"
    And I don't see the employees on the list