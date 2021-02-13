@register @login @all
  Feature: Create new user register

    Background:
      Given I'm not logged in
      When I go to the login page
      And I click on new user register
      And I am on user register page

    @check_required_fields
    Scenario: Check Required Fields
      Then I see on page "Criar Conta"
      And I see on page "Este formulário de cadastro é somente para médicos, nutricionistas e estudantes"
      And I see on page "Se você é secretária(o), peça para seu médico"
      Given I click next on the user register page
      Then I see on page "Campo obrigatório"

    @check_redirect_login
    Scenario: Check redirect to login page
      Given I click on login now
      Then I see the login page

    @create_account
    Scenario: Check Create Account
      When I fill the Register form 1
      And I click next on the user register page
      And I fill the Register form 2
      Then I see on page "TERMOS E CONDIÇÕES DE USO"

    @check_inactive_login
    Scenario: Check login inactive account
      Given I click on login now
      Then I see the login page
      When I fill inactive credential
      And I click to login - inactive
      Then I see on page "Usuário ainda não validado, verifique seu e-mail e ative sua conta."
      And I see on page "Reenviar E-mail"

    @create_account_not_security
    Scenario: Check Create Account - Security Password
      When I fill the Register form 1
      And I click next on the user register page
      And I fill the Register form 2 - Not Security Pass
      Then I see on page "Utilize pelo menos uma letra maiúscula, uma letra minúscula, um número e, no mínimo, 6 dígitos."