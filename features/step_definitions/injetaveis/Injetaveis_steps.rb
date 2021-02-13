injetaveis_list = InjetaveisPage.new
commonaction = CommonActionPage.new

Given("I click on my Pedidos") do
  injetaveis_list.meus_pedidos.click
  sleep 2
end

Given("I click on my Cart") do
  injetaveis_list.carrinho.click
  sleep 2
end

Given("I click on my Requests") do
  injetaveis_list.meus_pedidos.click
  sleep 2
end

Given("I search Requests {string}") do |string|
  injetaveis_list.search_pedidos.set string
  sleep 2
end

Given("I click on details Requests") do
  injetaveis_list.details_pedidos.click
  sleep 2
end

Given("I click on repeat Requests") do
  injetaveis_list.repetir_pedido.click
  sleep 2
end

When("I search {string} on Injetaveis") do |string|
  injetaveis_list.search.set string
  sleep 2
end

When("I add an item to buy") do
  injetaveis_list.list1_injetaveis.click
  sleep 2
end

When("I increase the quantity of an item") do
  injetaveis_list.aumenta_item1.click
  sleep 2
end

When("I decrease the quantity of an item") do
  injetaveis_list.reduz_item1.click
  sleep 2
end

When("I remove item by cart") do
  injetaveis_list.remove_item1.click
  sleep 2
end

When("I keep buying") do
  injetaveis_list.continuar_comprando1.click
  sleep 2
end

When("I finish purchase") do
  injetaveis_list.finalizar_compra1.click
  sleep 2
end

When("I finish purchase - 2 itens") do
  injetaveis_list.finalizar_compra2.click
  sleep 2
end

When("I click proximo on cart") do
  injetaveis_list.proximo1.click
  sleep 2
end

When("I click proximo") do
  injetaveis_list.proximo2.click
end

When("I fill Clinics Address") do
  injetaveis_list.clinics_address.click
  sleep 2
  injetaveis_list.input_clinics_address.click
  sleep 3
end

When("I fill Cep and Nr") do
  injetaveis_list.logradouroNumero.set '3500'
  sleep 3
  injetaveis_list.cep.set '88050000'
  sleep 3
  injetaveis_list.cep.send_keys :enter
end

When("I fill Cep") do
  injetaveis_list.cep.set '88050000'
  sleep 3
end

When("I Click on NR") do
  injetaveis_list.logradouroNumero.click
  sleep 3
end

When("I select on Boleto") do
  sleep 3
  injetaveis_list.boleto.click
  sleep 2
end

When("I select on Credit Card") do
  sleep 2
  injetaveis_list.credit_card.click
  sleep 2
end

Then("I see information about credit card in mailinator with {string}") do |string|
  new_window = open_new_window
  switch_to_window new_window
  visit 'https://mailinator.com'
  sleep 3
  find('#addOverlay').set string
  find('#addOverlay').send_keys :enter
  sleep 2
  find(:xpath, '/html/body/div[2]/div/div[3]/div/div[7]/div/div/div/table/tbody/tr[1]/td[4]/a').click
  sleep 2
  within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[8]/div/div/div[3]/iframe')) {
    expect(page).to have_content("Recebemos com sucesso seu pedido de Medicamentos Injetáveis através da plataforma Easy Health.")
    expect(page).to have_content("Forma de pagamento: Cartão de Crédito")
  }
  sleep 3
end