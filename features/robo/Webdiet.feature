@robo
  Feature: Robo

    @webdiet  @doing
    Scenario: Login
      Given I open url "https://pt.webdiet.com.br/login/"
      Then I see on page "ESCOLHA A VERSÃO PARA LOGIN"
      When I fill login
      And I set version
      And I click entrar
      Then I see on page "Últimos pacientes"
      When I open url "https://pt.webdiet.com.br/painel/pacientes.php"
      Then I see on page "Todos os pacientes"
      When I click on first patient
      Then I see patient informations