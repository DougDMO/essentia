@injetaveis @login @all
Feature: Injetaveis
  As a doctor
  I want to buy injetaveis

  Background:
    Given I select a Clinic
    And I select the Injetaveis menu

  @check_cart
  Scenario: Check Cart
    And I click on my Cart
    Then I see on page "Você ainda não adicionou itens ao seu carrinho."
    And I see on page "Comece agora escolhendo itens ao lado."
    And I dont see on page "Continuar Comprando"
    And I dont see on page "Finalizar Compra"

  @search_add
  Scenario: Search and Add injetaveis
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    Then I see on page "R$"
    And I see on page "Continuar Comprando"
    And I see on page "Finalizar Compra"

  @remove_item
  Scenario: Remove Item
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I remove item by cart
    Then I see on page "Você ainda não adicionou itens ao seu carrinho."


  @finish_purchase
  Scenario: Finish Purchase
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I keep buying
    And I search "Vitamina C" on Injetaveis
    And I add an item to buy
    And I finish purchase - 2 itens
    Then I see on page "Finalizar Compra"

  @finish_full_purchase
  Scenario: Finish Full Purchase
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I keep buying
    And I search "Vitamina C" on Injetaveis
    And I add an item to buy
    And I finish purchase - 2 itens
    And I click proximo on cart
    And I fill Cep and Nr
    And I click proximo
    And I select on Boleto
    And I click proximo
    Then I see on page "Pedido registrado com sucesso!"
    And I see on page "Em breve enviaremos para seu e-mail o Boleto para pagamento do seu Pedido."
    When I select the Injetaveis menu
    And I click on my Cart
    Then I see on page "Você ainda não adicionou itens ao seu carrinho."

  @finish_off_address
  Scenario: Finish Off Address
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I keep buying
    And I search "Vitamina C" on Injetaveis
    And I add an item to buy
    And I finish purchase - 2 itens
    And I click proximo on cart
    And I fill Cep
    And I Click on NR
    And I click proximo
    Then I see on page "Número é obrigatório"

  @increase_item
  Scenario: Increase item
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I increase the quantity of an item
    And I increase the quantity of an item
    And I increase the quantity of an item
    Then I see on page "R$"

  @decrease_item
  Scenario: decrease item
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I increase the quantity of an item
    And I increase the quantity of an item
    And I decrease the quantity of an item
    Then I see on page "R$"

  @decrease_zero_item
  Scenario: decrease item
    And I search "Vitamina D" on Injetaveis
    When I add an item to buy
    And I increase the quantity of an item
    And I decrease the quantity of an item
    And I decrease the quantity of an item
    Then I see the success message "Para zerar um item, você deve excluir clicando na lixeira."