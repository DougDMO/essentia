@print_layout @login @all
Feature: Print Layout
  As a doctor
  I want to register a new Print Layout, edit and delete

  Background:
    Given I select a Clinic
    And I select the Setup menu
    And I select the Print Layout submenu
    When I am on Print Layout page

  @new_default_print_layout
  Scenario: Create a New Print Layout
    Given I click on new Print Layout
    When I fill the default Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @check_data_preview
  Scenario: Check data preview
    When I select the second Print Layout to view
    Then I see on page "Paciente"
    And I see on page "Telefone"
    And I see on page "E-mail"

  @check_hotfix_print_layout
  Scenario: Check save create a New Print Layout
    Given I click on new Print Layout
    When I fill the default Print Layout form incomplete
    And I save the Print Layout
    And I see the success message "É necessário ter uma imagem ou desative a assinatura."

  @edit_default_print_layout
  Scenario: Edit a Print Layout
    Given I select the second Print Layout to edit
    And I edit the default Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @delete_print_layout
  Scenario: Delete a Print Layout
    Given I select the second Print Layout to delete
    And I confirm to delete the Print Layout
    And I see the success message "Excluído com sucesso"
    And I don't see the Print Layout on list

  @new_letterhead_print_layout
  Scenario: Create a New Print Layout
    Given I click on new Print Layout
    When I fill the Letterhead Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @edit_letterhead_print_layout
  Scenario: Edit a Print Layout
    Given I select the second Print Layout to edit
    And I edit the Letterhead Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @delete_print_layout
  Scenario: Delete a Print Layout
    Given I select the second Print Layout to delete
    And I confirm to delete the Print Layout
    And I see the success message "Excluído com sucesso"
    And I don't see the Print Layout on list

  @new_image_print_layout
  Scenario: Create a New Print Layout
    Given I click on new Print Layout
    When I fill the Image Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @edit_image_print_layout
  Scenario: Edit a Print Layout
    Given I select the second Print Layout to edit
    And I edit the Image Print Layout form
    And I save the Print Layout
    And I see the success message "Salvo com sucesso"
    And I back to the List Print Layout
    Then I see the Print Layout saved on list

  @delete_print_layout
  Scenario: Delete a Print Layout
    Given I select the second Print Layout to delete
    And I confirm to delete the Print Layout
    And I see the success message "Excluído com sucesso"
    And I don't see the Print Layout on list