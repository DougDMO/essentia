clinics = ClinicsPage.new

Given("I am on Clinics page") do
  @clinic_title =  '.AAAAAAAA CLINIC'
  sleep 2
end

Given("I select a Clinic") do
  sleep 5
  clinics.first_clinic_container.click
  sleep 5
end

Given("I select a Invited Clinic") do
  sleep 5
  clinics.invited_clinic_container.click
  sleep 5
end

Given("I click on new clinic") do
  clinics.button_new.click
  sleep 2
end

Given("I click on edit the clinic profile") do
  clinics.action_button.click
  sleep 2
  clinics.action_button_edit.click
  sleep 2
end

Given("I click on delete the clinic profile") do
  clinics.action_button.click
  sleep 2
  clinics.action_button_delete.click
  sleep 2
end

When("I update the clinic name") do
  sleep 2
  clinics.name_field.set @clinic_title + 'AAAAA Update'
end

When("I fill the clinic name") do
  sleep 2
  clinics.name_field.set @clinic_title
  clinics.cep_field.set '88050-000'
  clinics.cep_field.send_keys :enter
  sleep 2
  clinics.nr_field.set '5000'
  sleep 2
  clinics.compl_field.set 'Sala 300'
  sleep 2
  (page.find(:xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-clinic-action/div/div[2]/div[1]/div/div[1]/div[1]/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-croppie/div/input', :visible => :all)).attach_file("paciente.jpg")
  sleep  2
  clinics.confirm_upload.click
  sleep 2
end

When("I save the clinic") do
  clinics.button_save.click
  sleep 2
end

Then("I see the clinic saved on clinic list") do
  expect(page).to have_content(@clinic_title)
end

Then("I don't see the clinic on clinic list anymore") do
  expect(page).to have_no_content(@clinic_title)
end


###  Employees - menu Clinics
When("I edit Employees") do
  clinics.edit_employees.click
  sleep 3
end

When("I click edit permissions Employees") do
  clinics.edit_perm_employees.click
  sleep 3
end

When("I click schedule permissions") do
  clinics.schdeule_perm_employees.click
  sleep 3
end

When("I click patient permissions") do
  clinics.patient_perm_employees.click
  sleep 3
end

When("I click model permissions") do
  clinics.model_perm_employees.click
  sleep 3
end

When("I click to save permissions") do
  clinics.save_perm_employees.click
  sleep 3
end