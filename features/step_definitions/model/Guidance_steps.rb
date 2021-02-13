menu = MenuPage.new
guidanceaction = GuidanceActionPage.new
guidancelist = GuidanceListPage.new

Given("I'm on Guidance Model page") do
  sleep 2
  menu.menu_model.click
  sleep 2
  menu.menu_guidance.click
  sleep 1
  @guidance_title =  'A Guidance' + rand(9999).to_s
end

Given("I fill new Guidance model") do
  guidancelist.button_new.click
  sleep 2
  guidanceaction.title.set @guidance_title
  guidanceaction.radio_private_no.click
  guidanceaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    guidanceaction.text.set @guidance_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill new Guidance model Colab") do
  guidancelist.button_new.click
  sleep 2
  guidanceaction.title.set @guidance_title
  guidanceaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    guidanceaction.text.set @guidance_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill Doctor in Guidance model") do
  guidanceaction.input_doctor_create.click
  sleep 2
  guidanceaction.first_doctor.click
  sleep 2
end

Given("I save new Guidance model") do
  guidanceaction.button_save.click
  sleep 2
end

Given("I search for the guidance created") do
  guidancelist.search.set 'A Guidance'
  guidancelist.search.send_keys :enter
  sleep 2
end

Given("I select the guidance to update") do
  guidancelist.first_button_edit.click
  sleep 3
end

Given("I select the first guidance model to update") do
  guidancelist.first_button_edit.click
  sleep 2
end

Given("I select the first guidance model to delete") do
  guidancelist.first_button_delete.click
  sleep 2
end

Given("I select the first guidance model to view") do
  guidancelist.first_button_view.click
  sleep 2
end

Given("I update the guidance model") do
  expect(page).to have_content('Novo Modelo de Orientações')
  guidanceaction.title.set @guidance_title + 'Updated'
  guidanceaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    guidanceaction.text.set @guidance_title + ': Texto de Descrição Atualizado'
  }
  sleep 3
end

Given("I update the guidance model Colab") do
  expect(page).to have_content('Novo Modelo de Orientações')
  guidanceaction.title.set @guidance_title + 'Updated'
  guidanceaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    guidanceaction.text.set @guidance_title + ': Texto de Descrição Atualizado'
  }
  sleep 3
end

Given("I delete model existent") do
  guidancelist.first_button_delete.click
  sleep 3
end

Then("I see the model on the guidance list") do
  expect(page).to have_content(@guidance_title)
end

Then("I don't see the model on the guidance list") do
  expect(page).to have_no_content("A Guidance")
end
