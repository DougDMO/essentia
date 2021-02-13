patient_list = PatientListPage.new
patient_profile = PatientProfilePage.new
patient = NewPatient.new
patient_page = PatientPage.new
commonaction = CommonActionPage.new
schedule = SchedulePage.new

Given("I am on Patient page") do
    @patient_name = 'A Patient ' + rand(9999).to_s
end

Given("I click on new patient") do
    patient_list.new_patient.click
    sleep 2
end

Given("I select the first patient to edit") do
    patient_list.first_patient_list.click
    sleep 2
end

Given("I remove {string} patients") do |string|
  string=string.to_i
  for x in 1..string
      sleep 2
      patient_list.first_patient_list.click
      sleep 2
      patient_profile.delete.click
      sleep 2
      commonaction.delete_confirmation2.click
      sleep 2
  end

end

Given("I research patient") do
    patient_list.research.set 'A Patient '
    sleep 3
end

When("I click on edit the patient profile") do
    patient_profile.edit.click
    sleep 2
end

When("I click on new schedule by patient profile") do
    patient_profile.new_appointment.click
    sleep 5
end

When("I click on delete the patient profile") do
    patient_profile.delete.click
    sleep 2
end

When("I click delete patient") do
    patient_page.delete_button.click
    sleep 2
end

When("I click on Medical records by patient profile") do
    patient_profile.medical_records.click
    sleep 3
end

When("I click on Medical records by patient page") do
    patient_page.tab3_medicalrecords.click
    sleep 3
end

When("I click on view a pre consult record") do
    patient_page.pre_consult_record.click
    sleep 3
end

When("I confirm to delete the patient") do
    commonaction.delete_confirmation2.click
    sleep 2
end

When("I fill the patient form") do
    patient.set_name(@patient_name)
    patient.fill_patient_form_basic
end

When("I fill the patient form without email") do
    patient.set_name(@patient_name)
    patient.fill_patient_basic_extra_valid
end

When("I fill the patient form with extra validations") do
    patient.set_name(@patient_name)
    patient.fill_patient_basic_extra_valid
end

When("I click on second patient form") do
    patient_page.info_additional.click
    sleep 2
end

When("I fill the second patient form with extra validations") do
    patient.upload(page.find('#fileupload', :visible => :all))
    patient.fill_patient_adic_ext_valid
    sleep 2
end

When("I edit the second patient form with extra validations") do
    patient_page.remove_upload.click
    sleep 2
    patient.upload(page.find('#fileupload', :visible => :all))
    patient.edit_patient_adic_ext_valid
    sleep 2
end

When("I click on third patient form") do
    patient_page.info_medic.click
    sleep 2
end

When("I fill the third patient form with extra validations") do
    patient.fill_patient_medic_ext_valid
    sleep 2
end

When("I fill the third patient form with extra validations - Colab") do
    patient.fill_patient_medic_ext_valid_C
    sleep 2
end

When("I edit the patient form") do
    @patient_name = @patient_name + ' Updated'
    patient.set_name(@patient_name)
    patient.edit_patient_form_basic
    sleep 2
end

When("I click send pre consult on patient profile") do
    patient_profile.send_pre_consult_profile.click
    sleep 2
end

When("I click start teleconsultation") do
    patient_profile.tele_consultation.click
    sleep 2
end

When("I click on send email termo consentimento") do
    patient_profile.send_consentimento.click
    sleep 3
end

When("I click on termo consentimento") do
    patient_profile.consentimento.click
    sleep 2
end

When("I click termo consentimento") do
    patient_profile.termo_consentimento.click
    sleep 3
end

When("I send termo consentimento") do
    patient_profile.send_termo_consentimento.click
    sleep 5

end

When("I click on meet") do
    patient_profile.meet.click
    sleep 2
end

When("I click on Skype") do
    patient_profile.skype.click
    sleep 2
end

When("I click on Whereby") do
    patient_profile.whereby.click
    sleep 2
end

When("I click on Whatsapp") do
    patient_profile.whatsapp.click
    sleep 2
end

When("I click send pre consult") do
    patient_profile.send_pre_consult.click
    sleep 2
end

When("I click send pre consult wpp") do
    patient_profile.send_pre_consult.click
    sleep 5
end

When("I click to send Whatsapp") do
    patient_profile.send_wpp.click
    sleep 2
end

When("I click to send Email") do
    patient_profile.send_email.click
    sleep 2
end

When("I fill pre consult form on patient profile") do
    patient_profile.pre_consult.click
    sleep 1
    patient_profile.list1_pre_consult.click
    sleep 1
    patient_profile.observations.set 'Observações do paciente para a Pré Consulta'
    sleep 2
end

When("I edit the profile patient form") do
    patient_profile.medical_notes.set "Observações Editadas"
    patient_profile.save.click
    sleep 1
    expect(commonaction.success_message.text).to have_text("Informações atualizadas")
    patient_profile.allergy.set "Alergia editada"
    patient_profile.allergy.send_keys :enter
    expect(page).to have_content("Informações atualizadas")
    sleep 2
end

When("I clear medical notes on profile patient form") do
    patient_profile.medical_notes.set ""
    patient_profile.save.click
    sleep 1
end

Then("I acess the last email in mailinator with {string}") do |string|
    new_window = open_new_window
    switch_to_window new_window
    visit 'https://mailinator.com'
    sleep 3
    find('#addOverlay').set string
    find('#addOverlay').send_keys :enter
    sleep 2
    find(:xpath, '/html/body/div[2]/div/div[3]/div/div[5]/div/div/div/table/tbody/tr[1]/td[4]/a').click
    sleep 2
    within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[6]/div/div/div[3]/iframe')) {
        find(:xpath, '/html/body/div/div[4]/a').click
    }
    sleep 3
end

Then("I only acess the last email in mailinator with {string}") do |string|
    new_window = open_new_window
    switch_to_window new_window
    visit 'https://mailinator.com'
    sleep 3
    find('#addOverlay').set string
    find('#addOverlay').send_keys :enter
    sleep 2
    find(:xpath, '/html/body/div[2]/div/div[3]/div/div[8]/div/div/div/table/tbody/tr[1]/td[4]/a').click
    sleep 2
    within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[9]/div/div/div[3]/iframe')) {
        expect(page).to have_content("Prezado(a) A Patient")
    }
    sleep 3
end

Then("I acess and check preconsult in the last email in mailinator with {string}") do |string|
    new_window = open_new_window
    switch_to_window new_window
    visit 'https://mailinator.com'
    sleep 3
    find('#addOverlay').set string
    find('#addOverlay').send_keys :enter
    sleep 2
    find(:xpath, '/html/body/div[2]/div/div[3]/div/div[8]/div/div/div/table/tbody/tr[1]/td[4]/a').click
    sleep 2
    within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[9]/div/div/div[3]/iframe')) {
        expect(page).to have_content("Observações do paciente para a Pré Consulta")
        find(:xpath, '/html/body/div/div[4]/a').click
    }
    sleep 3
end

Then("I answer the pre consult from my email") do
    switch_to_window(windows.last)
    sleep 3
    find(:xpath, '/html/body/app-root/app-template-b/div[3]/div/app-form/div/div/div/form/div[1]/div[2]/app-quiz/div[1]/div/app-quiz-radio/div/div/div/div[3]/label').click
    find(:xpath, '/html/body/app-root/app-template-b/div[3]/div/app-form/div/div/div/form/div[1]/div[2]/app-quiz/div[2]/div/app-quiz-text/div/div/textarea').set 'Resposta da Pré Consulta'
    sleep 2
    find(:xpath, '/html/body/app-root/app-template-b/div[3]/div/app-form/div/div/div/form/div[2]/div/button').click
    sleep 2
    switch_to_window(windows.first)
    sleep 2
end

Then("I see {string} new tab") do |string|
    switch_to_window(windows.last)
    sleep 3
    expect(page).to have_content(string)

end

When("I save the patient") do
    patient.save_patient
    sleep 6
end

When("I click to back on patient list") do
    sleep 2
    patient_page.back_edit.click
    sleep 2
end

When("I click to back on patient list - Colaborador") do
    sleep 2
    patient_page.back_edit_colab.click
    sleep 2
end

When("I click to close patient profile") do
    patient_profile.close
    sleep 2
end


Then("I see the patient saved on patient list") do
    expect(page).to have_content(@patient_name)
end

Then("I see the patient on patient list") do
    expect(page).to have_content("A Patient")
end

Then("I see the patient profile informations") do
    expect(page).to have_content('A Patient ')
    expect(page).to have_content("Telefone (48) 99999-9999")
    expect(page).to have_content("Último diagnóstico Nenhum")
    expect(page).to have_content("Sem Alergias")

end

Then("I see page api {string}") do |string|
  sleep 3
    within_window(switch_to_window(windows.last)) do
        current_url.should match string
    end
end

Then("I close the new window") do
    page.execute_script "window.close()"
    switch_to_window(windows.first)
    sleep 2
end

Then("I don't see the patient on the list") do
    expect(page).to have_no_content('A Patient')
end

When("I click to start a attendance from patient list") do
    patient_list.start_care.click
    sleep 7
end

When("I click on attendances from patient list") do
    patient_list.medical_records.click
    sleep 3
end

When("I click on exams tab from patient list") do
    patient_list.tab_exams.click
    sleep 3
end

When("I click on new results exams") do
    patient_list.new_results_exams.click
    sleep 3
end

When("I fill new results exams") do
    patient_list.input_results_exams.click
    sleep 3
    patient_list.cadastra_type_exams.click
    sleep 3
    patient_list.results_exams.set '350'
    sleep 3
end

When("I click save new results exams") do
    patient_list.save_results_exams.click
    sleep 3
end

When("I click on pre consult from patient list") do
    patient_list.patient_quiz.click
    sleep 3
end

When("I click on share attendance") do
    patient_list.share.click
    sleep 3
    patient_list.yes_share.click
    sleep 3
end

When("I check share attendance") do
    patient_list.share_attendance.click
    sleep 2
end

When("I check share Pre Consult") do
    patient_list.share_pre_consult.click
    sleep 2
end

When("I check share exams") do
    patient_list.share_exames.click
    sleep 2
end

When("I select Doctor for share") do
    patient_list.share_doctor.click
    sleep 2
    patient_list.share_doctor_input.click
    sleep 2
end

When("I save share") do
    patient_list.save_share.click
    sleep 3
end

When("I click on filter") do
    patient_list.filter.click
    sleep 2
end

When("I click on consulta filter") do
    patient_list.consulta_filter.click
    sleep 2
end

When("I click on Avaliacao Corporal filter") do
    patient_list.avaliacaocorp_filter.click
    sleep 2
end

When("I click on Gasto Energético filter") do
    patient_list.gastoenerg_filter.click
    sleep 2
end

When("I click on Pedido Exames filter") do
    patient_list.pedidoexames_filter.click
    sleep 2
end

When("I click on Prescrição filter") do
    patient_list.prescricao_filter.click
    sleep 2
end

When("I click on Plano Alimentar filter") do
    patient_list.planoalimentar_filter.click
    sleep 2
end

When("I click on Orientação filter") do
    patient_list.orientacao_filter.click
    sleep 2
end

When("I click on Laudo filter") do
    patient_list.laudo_filter.click
    sleep 2
end

When("I click on Atestado filter") do
    patient_list.atestado_filter.click
    sleep 2
end
