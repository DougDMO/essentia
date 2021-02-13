registerpage = RegisterPage.new
loginpage = LoginPage.new
commonaction = CommonActionPage.new

Given("I am on user register page") do
  @register_name = 'NewRegister' + rand(9999).to_s
end

Given("I click on new user register") do
  loginpage.register.click
  sleep 2
end

Given("I fill inactive credential") do
  loginpage.email.set 'containativa@mailinator.com'
  loginpage.password.set 'easy123456'
end

When("I click to login - inactive") do
  loginpage.login_button.click
  sleep 2
end

Given("I click on login now") do
  registerpage.login.click
  sleep 2
end

When("I fill the Register form 1") do
  registerpage.full_name.set @register_name
  registerpage.gener_fem.set(true)
  registerpage.especialidade_principal.click
  registerpage.first_espec_princ.click
  registerpage.other_especialidade.click
  registerpage.first_other_espec.click
  registerpage.uf.click
  registerpage.first_uf.click
  registerpage.city_conselho.click
  registerpage.first_city_conselho.click
  registerpage.nr_conselho.set '123456'
  registerpage.sigla_conselho.set 'CRMM'
  registerpage.uf_conselho.click
  registerpage.first_uf_conselho.click


  sleep 2
end

When("I fill the Register form 1 - search invalid input") do
  registerpage.especialidade_principal.click
  sleep 2
  registerpage.especialidade_principal_i.send_keys "teste"
  sleep 2
end

When("I fill the Register form 2") do
  registerpage.email.set @register_name+'@mailinator.com'
  registerpage.confirm_email.set @register_name+'@mailinator.com'
  registerpage.password.set 'Easy123456'
  registerpage.confirm_password.set 'Easy123456'
  registerpage.phone.set '99999999999'
  registerpage.agree.click
  sleep 2
end

When("I fill the Register form 2 - Not Security Pass") do
  registerpage.email.set @register_name+'@mailinator.com'
  registerpage.confirm_email.set @register_name+'@mailinator.com'
  registerpage.password.set '1234'
  registerpage.confirm_password.set '1234'
  registerpage.phone.set '99999999999'
  sleep 2
end

When("I click next on the user register page") do
  registerpage.next.click
  sleep 3
end

When("I click create account") do
  registerpage.create_account.click
  sleep 3
end

