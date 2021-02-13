@exams_guide @login @all
Feature: Exams Guide Model

  Background:
    Given I select a Clinic
    And I'm on Exam Guide Model page

  @exams_guide_model_create
  Scenario: Create a Exam Guide Model
    Given I fill new Exam Guide model
    When I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the exam guide list

  @exams_guide_model_edit
  Scenario: Edit a Exam Guide Model
    Given I select the first exam guide to update
    When I update the Exam Guide model
    And I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the exam guide list

  @exams_guide_model_search_edit
  Scenario: Searcn and Edit a Exam Guide Model
    Given I search for the exam guide created 
    And I select the first exam guide to update
    When I update the Exam Guide model
    And I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the exam guide list

  @exams_guide_model_duplicate
  Scenario: Duplicate a Exam Guide Model
    Given I search for the exam guide created
    And I select the first exam guide to view
    When I click to duplicate
    And I update the Exam Guide model
    And I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see the model on the exam guide list
  
   @exams_guide_model_delete
  Scenario: Delete a Exam Guide Model
    Given I search for the exam guide created
    And I select the first exam guide to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"

  @exams_guide_model_delete
  Scenario: Delete a Exam Guide Model
    Given I search for the exam guide created
    And I select the first exam guide to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I don't see the model on the exam guide list

  @exams_guide_name_equal
  Scenario: Create a Exam Guide Model
    Given I fill new Exam Guide model - name fix
    When I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see on page "Nôme fíxo teste"

  @exams_guide_model_delete
  Scenario: Delete a Exam Guide Model
    Given I search for the exam guide created - name fix
    And I select the first exam guide to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I dont see on page "Nome fixo teste"

  @exams_guide_name_equal
  Scenario: Create a Exam Guide Model
    Given I fill new Exam Guide model - name fix
    When I save the Exam Guide model
    Then I see the success message "Salvo com sucesso"
    And I see on page "Nôme fíxo teste"

  @exams_guide_model_delete
  Scenario: Delete a Exam Guide Model
    Given I search for the exam guide created - name fix
    And I select the first exam guide to delete
    When I click to continue
    Then I see the success message "Excluído com sucesso"
    And I dont see on page "Nome fixo teste"