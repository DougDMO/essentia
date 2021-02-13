@robo
  Feature: Robo

    @dietbox
    Scenario: Login
      Given I open url "https://dietbox.me/pt-BR/Account/Login"
      Then I see on page "Selecione uma das opções"
      When I fill login
      And I set version
      And I click entrar
      Then I see on page "Últimos pacientes"