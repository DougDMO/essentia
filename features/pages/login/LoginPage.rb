class LoginPage < SitePrism::Page

  set_url '/login'

  element :email, '#TDD-LOGIN-username'
  element :password, '#TDD-LOGIN-password'
  element :login_button, '#TDD-login-submit'
  element :error_message, '#TDD-LOGIN-error-message'
  element :email_require, '#mat-error-0'
  element :password_require, '#mat-error-1'
  element :remember_me, '#TDD-LOGIN-remember-me'
  element :forgot_password, '#TDD-LOGIN-forgot-password'  
  element :register, '#TDD-LOGIN-register'
  element :allow_termos, :xpath, '/html/body/div[2]/div[2]/div/div[2]/button[2]'

  #extras

  element :hello, '#TDD-COMMON-hello-user'
  element :prefer, :xpath, '/html/body/div[2]/div[2]/div/div/div/div/button[1]'
  element :prefer2, :xpath, '/html/body/div[3]/div[2]/div/div/div/div/button[1]'
  element :prefer_colab, :xpath, '/html/body/div[4]/div[2]/div/div/div/div/button[1]'

end