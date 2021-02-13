@estoque @login @all
Feature: Estoque
  As a doctor
  I want to register entrada e saida no estoque

  Background:
    Given I select a Clinic
    And I select the Estoque menu

  @new_item  @smoke_test
  Scenario: Register new item in estoque
    When I click on new item
    And I fill new item
    Then I see the success message "Salvo com sucesso"
    And I see on page "Item Estoque Automação"
    And I see on page "Texto Apresentação Estoque"
    And I see on page "000597"
    And I see on page "01/01/2030"
    And I see on page "10"

  @new_entrada @smoke_test
  Scenario: Register a new entrada in estoque
    When I click on Entrada
    And I fill new entrada
    Then I see the success message "Registro feito com sucesso."
    And I see on page "11"

  @new_saida @smoke_test
  Scenario: Register a new saida in estoque
    When I click on Saida
    And I fill new saida
    Then I see the success message "Registro feito com sucesso."
    And I see on page "9"

  @check_historic_item
  Scenario: Check Historic item
    When I search "Item Estoque Automação" on estoque
    And I acess historic estoque item
    Then I see on page "Item Estoque Automação"
    And I see on page "Entrada Comum"
    And I see on page "Saída Comum"
    And I see on page "10"
    And I see on page "1"
    And I see on page "2"
    And I see on page "Cibele Mallmann Médico"

  @new_saida_maior
  Scenario: Register a new saida in estoque
    When I click on Saida
    And I fill new saida maior
    Then I see the success message "A quantidade de Item Estoque Automação é insuficiente em estoque."

  @remove_item @smoke_test
  Scenario: Remove a item in estoque
    When I search "Item Estoque Automação" on estoque
    And I remove estoque item
    Then I see the success message "Excluído com sucesso"