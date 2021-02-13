@login_user @login @all
  Feature: Acess the Easy Health

    Background:
      Given I'm not logged in
      When I go to the login page

    @login_success @smoke_test
    Scenario: Access the login
      Given I fill valid credential
      When I click to login
      Then Should be displayed my clinics

   @login_logout
    Scenario: Access the login and realize logout
      Given I fill valid credential
      When I click to login
      And I click to logout
      Then I see the login page

    @login_fail @smoke_test
    Scenario: Access the login failed
      Given I fill invalid credential
      When I click to login
      Then Should be displayed a error message "Usuário e/ou senha incorreto"
      And I see the login page

    @edit_password_login_success
    Scenario: Access the login
      Given I fill valid credential
      When I click to login
      And I select a Clinic
      And I acess user prefer - adm
      And I edit and save the new password
      And I click to logout - Agenda
      And I fill edit valid credential
      And I click to login
      Then Should be displayed my clinics
      And I select a Clinic
      And I acess user prefer - adm
      And I edit to back the password
      And I click to logout - Agenda
      And I fill valid credential
      And I click to login
      Then Should be displayed my clinics

    @forgot_password
    Scenario: Forgot password
      Given I click on forgot password
      Then I see the forgot password page

    @forgot_password_return_login
    Scenario: Forgot password returns to login
      Given I click on forgot password
      When I click on return to login
      Then I see the login page