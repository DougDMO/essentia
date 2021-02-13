When("I am on Schedule page") do
  @schedule = SchedulePage.new
  
end

Given("I click on new Schedule") do
  sleep 3
  @schedule.new_schedule_button.click
  @schedule_form = NewSchedule.new
  sleep 3
end

Given("I click on new patient -schedule-") do
  sleep 3
  @schedule.add_patient.click
  sleep 3
end

Given("I click on Today") do
  sleep 1
  @schedule.filter_day.click
  sleep 1
  @schedule.today_filter_button.click
  sleep 3
end

Given("I click on Filter") do
  sleep 1
  @schedule.calendar_filter_select.click
  sleep 1

end

Given("I click on the consult") do
  @schedule.t_schedule.click
  sleep 3
end

Given("I click on 2 dates to the right") do
  @schedule.right_calendar.click
  sleep 1
  @schedule.right_calendar.click
end

Given("I click on 1 dates to the right") do
  @schedule.right_calendar.click
  sleep 1
end


Given("I close modal shedule") do
  @schedule.close_edit_schedule.click
  sleep 1
end
Given("I click on the edit") do
  @schedule.edit_schedule_button.click
  @schedule_form = NewSchedule.new
  sleep 3
end

Given("I click on the edit1") do
  @schedule.edit_schedule_button2.click
  @schedule_form = NewSchedule.new
  sleep 3
end

Given("I click delete") do
  @schedule.delete_schedule_button.click
  sleep 3
end

Given("I click delete by editing") do
  @schedule.delete_schedule_button2.click
  sleep 3
end

Given("I change schedule status - {string}") do |string|
  page.find(:xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/div').click
  sleep 3
  page.find(:xpath,'//*[@id="confirm"]/div['+string+']').click
  sleep 2
end

Given("I confirm the deletion") do
  @schedule.confirm_delete_schedule_button.click
end

Given("I edit the schedule form") do
  @schedule_form.fill_schedule_form_edit
  sleep 2
end


Given("I edit schedule date +2") do
  @schedule_form.edit_date_2_schedule
  sleep 2
end

Given("I edit schedule date -1") do
  @schedule_form.edit_date__1_schedule
  sleep 2
end

Given("I edit schedule date") do
  @schedule_form.edit_date_schedule
  sleep 2
  @schedule_form.fill_current_date_schedule
  sleep 2
end


Given("I fill the schedule form") do
  @schedule_form.fill_schedule_form
  sleep 2
end

Given("I set the current date on the schedule form") do
  @schedule_form.fill_current_date_schedule
  sleep 2
end

Given("I fill the schedule form only") do
  @schedule_form = NewSchedule.new
  @schedule_form.fill_schedule_form_only
  sleep 2
end

Given("I fill the schedule form with validations") do
  @schedule_form.fill_schedule_form_validations
  sleep 2

end

Given("I fill the patient form -schedule-") do
  @schedule_form.fill_patient_schedule_form
  sleep 2
end

Given("I fill the schedule form with validations extras") do
  @schedule_form.fill_check_schedule_form
  sleep 2
end

Given("I back time schedule") do
  @schedule_form.fill_back_time_schedule
  sleep 2
end

Given("I uncheck email and wpp") do
  @schedule.send_email.click
  sleep 1
  @schedule.send_wpp.click
  sleep 1
end

Given("I click to save the schedule") do
  @schedule_form.save_schedule
  sleep 5
end

Given("I click to save -validation- the schedule") do
  @schedule_form.save_schedule
end

Then("I see and confirm the schedule by my email") do
  switch_to_window(windows.last)
  sleep 3
  expect(page).to have_content('Confira as informações referentes ao seu agendamento.')
  expect(page).to have_content('Confirmar Agendamento')
  find(:xpath, '/html/body/app-root/app-template-b/div[3]/div/div/div[2]/div[3]/button').click
  sleep 2
end

Then("I see expired schedule by my email") do
  switch_to_window(windows.last)
  sleep 3
  expect(page).to have_content('Confira as informações referentes ao seu agendamento.')
  expect(page).to have_content('A data da sua consulta já passou!')
  sleep 2
end

Then("I see the edit notice") do
  expect(page).to have_content("Você alterou o período deste Agendamento.")
  @schedule.confirm_edit_date.click
  sleep 2
  @schedule.confirm_send_email.click
  sleep 2
end

Then("I see on page {string}") do |string|
  expect(page).to have_content(string)
end

Then("I dont see on page {string}") do |string|
  expect(page).to have_no_content(string)
end

Then("I dont see the edit notice") do
  expect(page).to have_no_content("Você alterou o período deste Agendamento.")
  sleep 3
end

Then("I see the new schedule option is visible") do
  expect(page).to have_content("Novo Agendamento")
end

Then("I see the filters are visible") do
  expect(page).to have_content("Hoje")
  expect(page).to have_content("Mês")
  expect(page).to have_content("Semana")
  expect(page).to have_content("Dia")
  expect(page).to have_css('#TDD-SCHEDULE-filter-list')

end

Then("I see the list options were loaded") do
  expect(page).to have_content("Exibir")
end

Then("I check the status available for a later date") do
  page.find(:xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/div').click
  sleep 3
  expect(page).to have_content("Aguardando confirmação")
  expect(page).to have_content("Agendamento confirmado")
  expect(page).to have_content("Atendimento cancelado")
  expect(page).to have_content("Ausente")
  expect(page).to have_content("Agendamento remarcado")
  page.find(:xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/div/span').click
  sleep 3
end

Then("I check the status available for a expired date") do
  page.find(:xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/div').click
  sleep 3
  expect(page).to have_content("Atendimento realizado")
  expect(page).to have_content("Atendimento não realizado")
  expect(page).to have_content("Atendimento cancelado")
  expect(page).to have_content("Ausente")
  expect(page).to have_content("Agendamento remarcado")
  page.find(:xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/div/span').click
  sleep 3
end


Then("I see {string} in the color of my status") do |string|
  expect(page).to have_css('#calendarContent > ng-fullcalendar > div > div > table > tbody > tr > td > div > div > div.fc-content-skeleton > table > tbody > tr > td:nth-child(2) > div > div:nth-child(2) > a > div.fc-content > div.fc-title > span.badge.badge-pill.badge-'+string+'.position-absolute')
end

Then("I see the calendar panel was loaded") do

  @schedule.filter_month.click
  sleep 8
  expect(page).to have_selector("#calendarContent > ng-fullcalendar > div > div > table > tbody > tr > td > div")
  expect(page).to have_content("SEGUNDA")
  expect(page).to have_content("TERÇA")
  expect(page).to have_content("QUARTA")
  expect(page).to have_content("QUINTA")
  expect(page).to have_content("SEXTA")
  expect(page).to have_content("SÁBADO")
  expect(page).to have_content("DOMINGO")
end

Then("I check -today- calendar panel was loaded") do
  page.find('#TDD-CALENDAR-day').click
  sleep 3
  expect(page).to have_content("06:00")
  expect(page).to have_content("07:00")
  expect(page).to have_content("08:00")
  expect(page).to have_content("09:00")
  expect(page).to have_content("21:00")
  expect(page).to have_content("22:00")
  expect(page).to have_content("23:00")
end
Then("I check -week- calendar panel was loaded") do
  sleep 3
  page.find('#TDD-CALENDAR-week').click
  sleep 3
  expect(page).to have_content("06:00")
  expect(page).to have_content("07:00")
  expect(page).to have_content("08:00")
  expect(page).to have_content("09:00")
  expect(page).to have_content("21:00")
  expect(page).to have_content("22:00")
  expect(page).to have_content("23:00")
end

Then("I dont see schedule menu") do
  expect(page).to have_no_css('#TDD-menu-schedule')
end
Then("I confirm cancel a schedule") do
  page.find(:xpath,'html/body/div[3]/div[4]/div/mat-dialog-container/app-delete-modal/div/div[2]/button[2]').click
  sleep 3
end

Then("I dont see patient menu") do
  expect(page).to have_no_css('#TDD-menu-patients')
end

Then("I dont see model menu") do
  expect(page).to have_no_css('#TDD-menu-models')
end

Then("I see schedule menu") do
  expect(page).to have_css('#TDD-menu-schedule')
end

Then("I see patient menu") do
  expect(page).to have_css('#TDD-menu-patients')
end

Then("I see model menu") do
  expect(page).to have_css('#TDD-menu-models')
end
