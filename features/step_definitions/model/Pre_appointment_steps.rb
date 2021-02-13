menu = MenuPage.new
preappaction = PreAppointmentActionPage.new
preapplist = PreAppointmentListPage.new

Given("I'm on Pre Medical Appointment Model page") do
  sleep 3
  menu.menu_model.click
  sleep 3
  menu.menu_pre_app.click
  sleep 2
  @pre_app_title =  'A Pre Appointment ' + rand(9999).to_s
end

Given("I fill new pre appointment model") do
  sleep 2
  preapplist.button_new.click
  sleep 2
  preappaction.name.set @pre_app_title
  sleep 1
  preappaction.radio_private_no.click
  sleep 1
  preappaction.component_header.drag_to(preappaction.drop_target)
  sleep 1
  preappaction.component_unique_response.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_discursive_response.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_multiple_responses.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_text_area.drag_to(preappaction.drop_target)
  sleep 2
end

Given("I fill new pre appointment model Colab") do
  sleep 2
  preapplist.button_new.click
  sleep 2
  preappaction.name.set @pre_app_title
  sleep 1
  #preappaction.radio_private_no.click
  sleep 1
  preappaction.component_header.drag_to(preappaction.drop_target)
  sleep 1
  preappaction.component_unique_response.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_discursive_response.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_multiple_responses.drag_to(preappaction.drop_target)
  sleep 2
  preappaction.component_text_area.drag_to(preappaction.drop_target)
  sleep 2
end

Given("I fill Doctor in pre appointment model") do
  preappaction.input_doctor_create.click
  sleep 2
  preappaction.first_doctor.click
  sleep 2
end

Given("I select the first pre appointment model to update") do
  preapplist.first_button_edit.click
  sleep 2
end

Given("I select the first pre appointment model to delete") do
  preapplist.first_button_delete.click
  sleep 2
end

Given("I select the first pre appointment model to view") do
  preapplist.first_button_view.click
  sleep 2
end

Given("I search for the pre appointment created") do
  preapplist.search.set 'A Pre Appointment'
  preapplist.search.send_keys :enter
  sleep 2
end

When("I click to save the pre appointment model") do
  preappaction.button_save.click
  sleep 2
end

When("I update the pre appointment model") do
  preappaction.name.set @pre_app_title
  sleep 2
end

Then("I see the model updated on the pre appointment list") do
  preappaction.button_back.click
  expect(page).to have_content('A Pre Appointment')
end

Then("I see the model on the pre appointment list") do
  expect(page).to have_content(@pre_app_title)
end

Then("I don't see the model on the pre appointment list") do
  expect(page).to have_no_content('A Pre Appointment')
end