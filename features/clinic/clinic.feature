@clinic @login @all
Feature: Clinic
  As a doctor
  I want to register a new clinic, edit and delete
  In order to manage this clinic

  Background:
    Given I am on Clinics page

  @new_clinic @smoke_test
  Scenario: Create a New Clinic
    And I click on new clinic
    When I fill the clinic name
    And I save the clinic
    Then I see the success message "Salvo com sucesso"
    And I see the clinic saved on clinic list
  
  @edit_clinic @smoke_test
  Scenario: Edit a Clinic
    And I click on edit the clinic profile 
    When I update the clinic name
    And I save the clinic
    Then I see the success message "Salvo com sucesso"
    And I see the clinic saved on clinic list

  @delete_clinic @smoke_test
  Scenario: Delete a Clinic
    And I click on delete the clinic profile 
    When I click to continue delete
    Then I see the success message "Excluído com sucesso"
    And I don't see the clinic on clinic list anymore