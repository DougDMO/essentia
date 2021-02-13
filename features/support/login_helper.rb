class LoginHelper
  def make_login
    login = LoginPage.new
    ##login.email.set 'cibelermallmann@gmail.com'
    login.email.set 'automacaoeasyhealth@mailinator.com'
    login.password.set '123456'
    #sleep 3
    #login.allow_termos.click
    login.login_button.click

  end
  def make_login_colab
    login = LoginPage.new
    ##login.email.set 'douglasqa@mailinator.com'
    login.email.set 'automacaoeasyheatlhcolab@mailinator.com'
    login.password.set '123456'
    #sleep 3
    #login.allow_termos.click
    login.login_button.click
  end
end