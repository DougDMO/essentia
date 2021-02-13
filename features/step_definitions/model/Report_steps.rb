menu = MenuPage.new
reportaction = ReportActionPage.new
reportlist = ReportListPage.new

Given("I'm on Report Model page") do
  sleep 3
  menu.menu_model.click
  sleep 3
  menu.menu_report.click
  sleep 2
  @report_title =  'A Report ' + rand(9999).to_s
end 

Given("I fill new Report model") do
  reportlist.button_new.click
  sleep 2
  reportaction.title.set  @report_title
  reportaction.radio_private_no.click
  reportaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    reportaction.text.set @report_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill new Report model Colab") do
  reportlist.button_new.click
  sleep 2
  reportaction.title.set  @report_title
  #reportaction.radio_private_no.click
  reportaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    reportaction.text.set @report_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Given("I fill Doctor in Report model") do
  reportaction.input_doctor_create.click
  sleep 2
  reportaction.first_doctor.click
  sleep 2
end

When("I save the report") do
  reportaction.button_save.click
  sleep 2
end

Given("I search for the report created") do
  reportlist.search.set 'A Report'
  reportlist.search.send_keys :enter
  sleep 2
end

Given("I select the first report model to update") do
  reportlist.first_button_edit.click
  sleep 2
end

Given("I select the first report model to delete") do
  reportlist.first_button_delete.click
  sleep 2
end

Given("I select the first report model to view") do
  reportlist.first_button_view.click
  sleep 2
end

When("I click to duplicate the report") do
  reportlist.view_duplicate.click
  sleep 2
end

When("I update the report model") do
  expect(page).to have_content('Novo Modelo de Laudos')
  reportaction.title.set @report_title + ' Updated'
  reportaction.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    reportaction.text.set @report_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

When("I update the report model Colab") do
  expect(page).to have_content('Novo Modelo de Laudos')
  reportaction.title.set @report_title + ' Updated'
  reportaction.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    reportaction.text.set @report_title + ': Texto de Descrição do Modelo'
  }
  sleep 3
end

Then("I see the model on the report list") do
  expect(page).to have_content(@report_title)
end

Then("I don't see the model on the report list") do
  expect(page).to have_no_content('A Report')
end
