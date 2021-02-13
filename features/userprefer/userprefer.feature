@userprefer @login @all
  Feature: Valid User Prefer

    @edit_user_prefer
    Scenario: Edit user prefer
      Given I select a Clinic
      And I acess user prefer - adm2
      And I fill user prefer
      And I see the success message "Salvo com sucesso"
      And I back to fill user prefer
      And I see the success message "Salvo com sucesso"