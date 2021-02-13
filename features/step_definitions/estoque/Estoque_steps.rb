estoque_list = EstoquePage.new
commonaction = CommonActionPage.new

Given("I click on new item") do
  estoque_list.new_item.click
  sleep 2
end

Given("I fill new item") do
  estoque_list.name.set 'Item Estoque Automação'
  sleep 2
  estoque_list.presentation.set 'Texto Apresentação Estoque'
  sleep 2
  estoque_list.lot.set '000597'
  sleep 2
  estoque_list.validity.set '01/01/2030'
  sleep 2
  estoque_list.validity.send_keys :escape
  sleep 2
  estoque_list.quantity_in_stock.set '10'
  sleep 2
  estoque_list.save.click
  sleep 4
end

Given("I click on Entrada") do
  estoque_list.entrada.click
  sleep 2
end

Given("I fill new entrada") do
  estoque_list.search_item_entrada.set 'Item Estoque Automação'
  sleep 2
  estoque_list.input_item_entrada.click
  sleep 2
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  estoque_list.data_entrada.set @dataatual
  sleep 2
  estoque_list.data_entrada.send_keys :escape
  sleep 2
  estoque_list.nr_documento_entrada.set '0058936'
  sleep 2
  estoque_list.clinic.click
  sleep 2
  estoque_list.list1_clinic.click
  sleep 2
  estoque_list.observacao1.set 'Texto Observação Entrada'
  sleep 2
  estoque_list.save_outstock.click
  sleep 2
end

Given("I click on Saida") do
  estoque_list.saida.click
  sleep 2
  expect(page).to have_content("Registrar Saídas")
end

Given("I fill new saida") do
  estoque_list.search_item_saida.set 'Item Estoque Automação'
  sleep 2
  estoque_list.input_item_saida.click
  sleep 2
  estoque_list.qtdsaida.set '2'
  sleep 2
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  estoque_list.data_saida.set @dataatual
  sleep 2
  estoque_list.data_saida.send_keys :escape
  sleep 2
  estoque_list.nr_documento_saida.set '0058936'
  sleep 2
  estoque_list.clinic_saida.click
  sleep 2
  estoque_list.list1_clinic_saida.click
  sleep 2
  estoque_list.observacao2.set 'Texto Observação Saida'
  sleep 2
  estoque_list.save_outstock.click
  sleep 2
end

Given("I fill new saida maior") do
  estoque_list.search_item_saida.set 'Item Estoque Automação'
  sleep 2
  estoque_list.input_item_saida.click
  sleep 2
  estoque_list.qtdsaida.set '35'
  sleep 2
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  estoque_list.data_saida.set @dataatual
  sleep 2
  estoque_list.data_saida.send_keys :escape
  sleep 2
  estoque_list.nr_documento_saida.set '0058936'
  sleep 2
  estoque_list.clinic_saida.click
  sleep 2
  estoque_list.list1_clinic_saida.click
  sleep 2
  estoque_list.observacao2.set 'Texto Observação Saida'
  sleep 2
  estoque_list.save_outstock.click
  sleep 2
end

Given("I search {string} on estoque") do |string|
  estoque_list.search.set string
  sleep 2
end

Given("I remove estoque item") do
  estoque_list.excluir.click
  sleep 2
  commonaction.delete_confirmation2.click
  sleep 2
end

Given("I acess historic estoque item") do
  estoque_list.historico.click
  sleep 2
end
