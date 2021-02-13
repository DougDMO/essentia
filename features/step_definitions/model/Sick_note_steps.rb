menu = MenuPage.new
sicknoteaction = SickNoteActionPage.new
sicknotelist = SickNoteListPage.new

Given("I'm on Sick Note Model page") do
  sleep 3
  menu.menu_model.click
  sleep 3
  menu.menu_sick_note.click
  sleep 2
  @sick_note_title =  'A Sick Note ' + rand(9999).to_s
end

Given("I fill new Sick Note model") do
  sicknotelist.button_new.click
  sleep 2
  sicknoteaction.title.set @sick_note_title
  sicknoteaction.radio_private_no.click
  sicknoteaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    sicknoteaction.text.set @sick_note_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill new Sick Note model Colab") do
  sicknotelist.button_new.click
  sleep 2
  sicknoteaction.title.set @sick_note_title
  #sicknoteaction.radio_private_no.click
  sicknoteaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    sicknoteaction.text.set @sick_note_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill Doctor Sick Note model") do
  sicknoteaction.input_doctor_create.click
  sleep 2
  sicknoteaction.first_doctor.click
  sleep 2
end

Given("I save the sick note model") do
  sicknoteaction.button_save.click
  sleep 2
end

Given("I select the first sick note model to update") do
  sicknotelist.first_button_edit.click
  sleep 2
end

Given("I select the first sick note model to delete") do
  sicknotelist.first_button_delete.click
  sleep 2
end

Given("I select the first sick note model to view") do
  sicknotelist.first_button_view.click
  sleep 2
end

Given("I search for the sick note created") do
  sicknotelist.search.set 'A Sick Note'
  sicknotelist.search.send_keys :enter
  sleep 2
end

When("I update the sick note model") do
  expect(page).to have_content('Novo Modelo de Atestado / Declaração')
  sicknoteaction.title.set @sick_note_title + 'Updated'
  sicknoteaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    sicknoteaction.text.set @sick_note_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

When("I update the sick note model Colab") do
  expect(page).to have_content('Novo Modelo de Atestado / Declaração')
  sicknoteaction.title.set @sick_note_title + 'Updated'
  sicknoteaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    sicknoteaction.text.set @sick_note_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Then("I see the model on the sick note list") do
  expect(page).to have_content(@sick_note_title)
end

Then("I don't see the model on the sick note list") do
  expect(page).to have_no_content('A Sick Note')
end