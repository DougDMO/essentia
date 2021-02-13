support = SupportPage.new

Given("I advance the first page of the tutorial") do
  support.proximo0.click
  sleep 2
end

Given("I advance the first page of the tutorial - Collab") do
  sleep 3
  support.proximo_colab.click
  sleep 2
end

Given("I advance the page of the tutorial") do
  support.proximo1.click
  sleep 2
end

Given("I advance the page of the tutorial - Collab") do
  support.proximo1_colab.click
  sleep 2
end

When("I fill the Support Form") do
  support.mensagem.set 'Mensagem de verificação - Testes Automatizados'
  support.elogio.set(true)
end

When("I Send the Support Form") do
  support.send.click
  sleep 2
end

When("I click link Central Help") do
  support.link_help.click
  sleep 5
end

When("I click link Whatsapp") do
  support.link_wpp.click
  sleep 2
end

When("I click link Youtube") do
  support.link_youtube.click
  sleep 2
end