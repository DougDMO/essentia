@formulas @login @all
Feature: Formulas
  As a doctor
  I want to register a new formula, edit and delete

  Background:
    Given I select a Clinic
    And I select the Formulas menu
    When I am on Formulas page

  @new_formulas @smoke_test
  Scenario: Create a New Formula
    Given I click on new formulas
    When I fill the formulas form
    And I save the formula
    And I see the success message "Salvo com sucesso!"
    Then I see the formula saved on list

  @view_formulas
  Scenario: View a New Formula
    Given I click on a formula
    Then I see on page "Minha Fórmula"
    And I see on page "The Formulas"

  @edit_formulas
  Scenario: Edit a Formula
    Given I select the first formula to edit
    And I edit the formulas form
    And I save the formula
    And I see the success message "Alterado com sucesso!"
    Then I see the formula saved on list

  @edit_search_formulas @smoke_test
  Scenario: Edit a Formula
    Given I research formula
    Given I select the first formula to edit
    And I edit the formulas form
    And I save the formula
    And I see the success message "Alterado com sucesso!"
    Then I see the formula saved on list

  @delete_formulas @smoke_test
  Scenario: Delete a Formula
    Given I select the first formula to delete
    And I confirm to delete the formula
    And I see the success message "Excluído com sucesso"
    And I don't see the formula on list

  @check_hotfix_name
  Scenario: Create a New Formula hotfix
    Given I click on new formulas
    When I fill the formulas form - name trim
    And I save the formula
    And I see the success message "Salvo com sucesso!"
    Then I dont see on page "    Formulas"

  @delete_formulas
  Scenario: Delete a Formula
    Given I select the first formula to delete
    And I confirm to delete the formula
    And I see the success message "Excluído com sucesso"
    And I don't see the formula on list