siteconfig = SiteConfigurationPage.new

When("I fill the Site Configuration") do
  #sleep 2
  #siteconfig.edit_clinic.click
  #sleep 2
  #siteconfig.save_clinic.click
  #sleep 3
  siteconfig.name.set 'Médico - Exemplo Configurações'
  siteconfig.specialty.set 'Ortopedista'
  siteconfig.urlSite.set 'medico-ortopedista'
  siteconfig.emailContact.set 'medicoortopedista@mailinator.com'
  siteconfig.textPresentation.set 'Descrição geral dos testes automatizados para a tela de configurações do site'
  siteconfig.showPresentation.click
  siteconfig.contact_input.click
  siteconfig.contact_input_first.click
  sleep 2
  siteconfig.contact_text.set 'testesiteconfig@mailinator.com'
  siteconfig.social_input.click
  siteconfig.social_input_first.click
  sleep 2
  siteconfig.social_text.set 'siteconfig'
  siteconfig.clinic.click
  siteconfig.textPresentation.send_keys :page_down
  sleep 2

end

When("I click link Site") do
  sleep 2
  siteconfig.linkSite.click
  sleep 5
  switch_to_window(windows.last)
end

When("I click link Facebook Site") do
  sleep 2
  siteconfig.facebook_linkSite.click
  sleep 5
  switch_to_window(windows.last)
end

When("I back to first tab") do
  switch_to_window(windows.first)
  sleep 5
end

When("I click link email Site") do
  sleep 2
  siteconfig.email_linkSite.click
  switch_to_window(windows.last)
end

When("I fill form email Site") do
  sleep 2
  siteconfig.name_email.set 'Teste usuário site'
  siteconfig.phone.set '99999999999'
  siteconfig.email.set 'testeusuariosite@mailinator.com'
  siteconfig.assunto.set 'Dúvidas sobre consulta'
  siteconfig.mensagem.set 'Envio esse e-mail para tirar uma dúvida sobre minha consulta agendada'
  siteconfig.send.click
  sleep 5
end

Then("I acess to see the last email in mailinator with {string}") do |string|
  new_window = open_new_window
  switch_to_window new_window
  visit 'https://mailinator.com'
  sleep 3
  find('#addOverlay').set string
  find('#addOverlay').send_keys :enter
  sleep 2
  find(:xpath, '/html/body/div[2]/div/div[3]/div/div[5]/div/div/div/table/tbody/tr/td[4]/a').click
  sleep 2
end

When("I see informations on email from doctor site") do
  within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[6]/div/div/div[3]/iframe')) {
    expect(page).to have_content("Dúvidas sobre consulta")
    expect(page).to have_content("Teste usuário site")
    expect(page).to have_content("testeusuariosite@mailinator.com")
    expect(page).to have_content("99999999999")
    expect(page).to have_content("Envio esse e-mail para tirar uma dúvida sobre minha consulta agendada")
  }
end

When("I fill back the Site Configuration") do
  sleep 2
  siteconfig.name.set 'Cibele Mallmann'
  siteconfig.specialty.set 'Geral 1'
  siteconfig.urlSite.set 'automacao-testes'
  siteconfig.emailContact.set 'cibelermallmann@gmail.com'
  siteconfig.showPresentation.click
  siteconfig.clear_contact_input.click
  siteconfig.clear_social_input.click
  siteconfig.clinic.click
  siteconfig.textPresentation.send_keys :page_down
  sleep 2
end

When("I save the Site Configuration") do
  siteconfig.save.click
  siteconfig.textPresentation.send_keys :page_up
  sleep 4
end