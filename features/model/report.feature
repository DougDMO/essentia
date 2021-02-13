@report @login @all
Feature: Report Model

  Background:
    Given I select a Clinic
    And I'm on Report Model page

  @report_model_create
  Scenario: Create a Report Model
    Given I fill new Report model
    When I save the report
    Then I see the success message "Salvo com sucesso"
    And I see the model on the report list

  @report_model_edit
  Scenario: Edit a Report Model
    Given I search for the report created 
    And I select the first report model to update
    When I update the report model
    When I save the report
    Then I see the success message "Salvo com sucesso"
    And I see the model on the report list

  @report_model_duplicate
  Scenario: Duplicate a report Model
    Given I search for the report created 
    And I select the first report model to view
    When I click to duplicate the report
    And I update the report model
    And I save the report
    Then I see the success message "Salvo com sucesso"
    And I see the model on the report list  

  @report_model_delete
  Scenario: Delete a Report Model
    Given I search for the report created 
    And I select the first report model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"

  @report_model_delete
  Scenario: Delete a Report Model
    Given I search for the report created
    And I select the first report model to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the report list