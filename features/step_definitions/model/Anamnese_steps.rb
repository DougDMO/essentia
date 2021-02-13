menu = MenuPage.new
anamneselist = AnamneseListPage.new
anamnespage = AnamnesePage.new

Given("I'm on Anamnese Model page") do
  sleep 2
  menu.menu_model.click
  sleep 2
  menu.menu_anamnese.click
  @anamnese_title =  'An Anamnese ' + rand(9999).to_s
  sleep 3
end

Given("I close menu model") do
  menu.menu_model.click
  sleep 2
end

Given("I fill new Anamnese Model") do
  anamneselist.button_new.click
  sleep 2
  anamnespage.title.set @anamnese_title
  anamnespage.radio_private_yes.set(true)
  anamnespage.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    anamnespage.text.set @anamnese_title + ': Texto de Descrição do Modelo'
  }
end

Given("I fill new Anamnese Model - Collaborator") do
  anamneselist.button_new.click
  sleep 2
  anamnespage.title.set @anamnese_title
  #anamnespage.input_doctor_create.click
  #sleep 2
  #anamnespage.first_doctor.click
  #sleep 2
  #anamnespage.radio_private_no_c.click
  anamnespage.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    anamnespage.text.set @anamnese_title + ': Texto de Descrição do Modelo'
  }
end

Given("I save the new Anamnese Model") do
  anamnespage.button_save.click
  sleep 2
end

Given("I search for the anamnese created") do
  anamneselist.search.set ' An Anamnese '
  anamneselist.search.send_keys :enter
  sleep 2
end

Given("I select the anamnese to update") do
  anamneselist.first_button_edit.click
  sleep 2
end

Given("I select the first anamnese model to update") do
  anamneselist.first_button_edit.click
  sleep 2
end

Given("I select the first anamnese model to delete") do
  anamneselist.first_button_delete.click
  sleep 2
end

Given("I select the first anamnese model to view") do
  anamneselist.first_button_view.click
  sleep 2
end

Given("I update the anamnese model") do
  anamnespage.title.set @anamnese_title + ' Updated'
  anamnespage.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    anamnespage.text.set @anamnese_title + ': Texto de Descrição Atualizado'
  }
end

Given("I update the anamnese model - Collaborator") do
  anamnespage.title.set @anamnese_title + ' Updated'
  #anamnespage.input_doctor_update.click
  #sleep 2
  #anamnespage.first_doctor.click
  sleep 2
end

Given("I fill duplicate the anamnese model") do
  anamnespage.title.set @anamnese_title + ' Updated'
  anamnespage.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    anamnespage.text.set @anamnese_title + ': Texto de Descrição Atualizado'
  }
  #anamnespage.input_doctor_create.click
  #sleep 2
  #anamnespage.first_doctor.click
  sleep 2
end

Given("I fill duplicate the anamnese model Colab") do
  anamnespage.title.set @anamnese_title + ' Updated'
  anamnespage.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    anamnespage.text.set @anamnese_title + ': Texto de Descrição Atualizado'
  }
  #anamnespage.input_doctor_create.click
  #sleep 2
  #anamnespage.first_doctor.click
  sleep 2
end

Given("I delete model existent") do
  anamneselist.first_button_delete.click
  sleep 3
end

Then("I see the model on the anamnese list") do
  expect(page).to have_content(@anamnese_title)
end

Then("I see the update model on the anamnese list") do
  expect(page).to have_content(@anamnese_title + ' Updated')
end

Then("I don't see the model on the anamnese list") do
  expect(page).to have_no_content("An Anamnese ")
end