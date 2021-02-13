userprefer = UserPreferPage.new
Given("I'm not logged in") do
  sleep 2
  @clinics = ClinicsPage.new
  @clinics.menu_name.click
  sleep 2
  @clinics.menu_sair_option.click
  sleep 3
end

Given("I'm not logged in - Clinics Page") do
  @clinics = ClinicsPage.new
  @clinics.menu_name.click
  sleep 2
  @clinics.menu_sair_optionA.click
end

Given("I go to the login page") do
  @login = LoginPage.new
end

Given("I fill valid credential") do
  #@login.email.set 'cibelermallmann@gmail.com'
  @login.email.set 'automacaoeasyhealth@mailinator.com'
  @login.password.set '123456'
end

Given("I fill valid credential automation") do
  @login.email.set 'automacaoeasyhealth@mailinator.com'
  @login.password.set '123456'
end

Given("I acess with valid credential for importer") do
  @login = LoginPage.new
  @login.email.set 'cibelermallmann@gmail.com'
  @login.password.set '123456'
  @login.login_button.click
  sleep 2
end

Given("I acess with invited Doctor") do
  @login = LoginPage.new
  @login.email.set 'doctor@mailinator.com'
  @login.password.set '123456'
  @login.login_button.click
  sleep 2
end

Given("I acess importer page") do
  visit 'https://easy-health.app/importer'
  sleep 5
end

Given("I click importer") do
  @clinics = ClinicsPage.new
  @clinics.importer.click
  sleep 5
end

Given("I click no importer now") do
  @clinics = ClinicsPage.new
  @clinics.no_importer.click
  sleep 5
end

Given("I wait importer") do
  sleep 60
end

Given("I fill edit valid credential") do
  @login.email.set 'automacaoeasyhealth@mailinator.com'
  @login.password.set '123456789'
end

Given("I fill invalid credential") do
  @login.email.set 'cibelermallmann@gmail.com'
  @login.password.set 'blabla'
end

Given("I click on forgot password") do
  sleep 3
  @login.forgot_password.click
  @forgot_password = ForgotPasswordPage.new
  sleep 5
end

When("I click to logout") do
  @clinics = ClinicsPage.new
  @clinics.menu_name.click
  sleep 2
  @clinics.menu_sair_option.click
end

When("I click to logout - Agenda") do
  @clinics = ClinicsPage.new
  @clinics.menu_name.click
  sleep 2
  @clinics.menu_sair_optionA.click
end

When("I click on return to login") do
  @forgot_password.return_login_link.click
end

When("I fill an valid email") do
  @forgot_password.email.set 'cibelermallmann@gmail.com'
end

When("I check the captcha") do
  @forgot_password.recaptcha.click
end

When("I click to send an email") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click to login") do
  @login.login_button.click
  sleep 2
end

When("I acess user prefer - adm") do
  sleep 3
  @login = LoginPage.new
  @login.hello.click
  sleep 2
  @login.prefer.click
  sleep 2
end

When("I acess user prefer - adm2") do
  sleep 3
  @login = LoginPage.new
  @login.hello.click
  sleep 2
  @login.prefer2.click
  sleep 2
end

When("I acess user prefer - Collaborator") do
  sleep 3
  expect(page).to have_content("Profissional")
  @login = LoginPage.new
  @login.hello.click
  sleep 2
  @login.prefer2.click
  sleep 2
end

When("I acess user prefer - collab") do
  sleep 3
  @login = LoginPage.new
  @login.hello.click
  sleep 2
  @login.prefer.click
  sleep 2
end

When("I edit and save the new password") do
  userprefer.password_current.set '123456'
  userprefer.password_new.set '123456789'
  userprefer.password_confirm.set '123456789'
  userprefer.password_confirm.send_keys :page_down
  sleep 2
  userprefer.save.click
  sleep 3
end

When("I edit to back the password") do
  userprefer.password_current.set '123456789'
  userprefer.password_new.set '123456'
  userprefer.password_confirm.set '123456'
  userprefer.password_confirm.send_keys :page_down
  sleep 2
  userprefer.save.click
  sleep 3
end

Then("I see the login page") do
  expect(current_path).to eql("/login")
end

Then("I see the email was sent to the user") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see the forgot password page") do
  expect(current_path).to eql("/forgot-password")
end

Then("Should be displayed my clinics") do
  expect(@clinics.title_page.text).to have_text('Selecione uma Clínica')
end

#TODO
Then("Should be displayed a error message {string}") do |message|
  sleep 2
  expect(@login.error_message.text).to have_text(message)
end


#USER PREFER

When("I fill user prefer") do
  userprefer.name.set 'Cibele Mallmann Médico UPDATE'
  userprefer.email_copy.set 'cibele@easy-health.appupdate'
  userprefer.siglaConselho.set 'teste update'
  userprefer.crmCrn.set '159'
  userprefer.crmCrn.send_keys :page_down
  userprefer.farmacy_name.set 'Farmácia Cibele update'
  userprefer.email_farmacy.set 'cibele@easy-health.app update'
  userprefer.farmacy_name2.set 'Maria Eduarda update'
  userprefer.email_farmacy2.set 'maria.dias@essentia.com.br update'
  sleep 2
  #userprefer.close_help.click
  userprefer.save.click
  sleep 3
end

When("I clear email user prefer") do
  userprefer.email_copy.set ''
  sleep 2
  userprefer.save.click
  sleep 3
end

When("I back email user prefer") do
  userprefer.email_copy.set 'cibele@easy-health.app'
  sleep 2
  userprefer.save.click
  sleep 3
end

When("I back to fill user prefer") do
  userprefer.name.set 'Cibele Mallmann Médico'
  userprefer.email_copy.set 'cibele@easy-health.app'
  userprefer.siglaConselho.set 'teste'
  userprefer.crmCrn.set '159'
  userprefer.crmCrn.send_keys :page_down
  userprefer.farmacy_name.set 'Farmácia Cibele'
  userprefer.email_farmacy.set 'cibele@easy-health.app'
  userprefer.farmacy_name2.set 'Maria Eduarda'
  userprefer.email_farmacy2.set 'maria.dias@essentia.com.br'
  sleep 2
  userprefer.save.click
  sleep 3
end


#USER PREFER COLLABORATOR

When("I fill user prefer - collaborator") do
  userprefer.name.set '.Automacao Colaborador - EASY'
  userprefer.workPassport.set '9768456456464654564'
  userprefer.pisPassep.set '535155'
  sleep 2
  userprefer.save.click
  sleep 3
end