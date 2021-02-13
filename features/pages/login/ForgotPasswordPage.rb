class ForgotPasswordPage < SitePrism::Page

  set_url '/forgot-password'

  element :email, 'input[formcontrolname="email"]'
  element :recaptcha, '#rc-anchor-container'
  element :submit_button, '#submit-button'
  element :return_login_link, :css, 'a[href="/login"]'

end