class WebdietPage < SitePrism::Page

  set_url '/login'

  element :email, '#emailLogin'
  element :password, '#senhaLogin'
  element :version2, '#versao2'
  element :version3, '#versao3'
  element :login_button, :xpath, '/html/body/div[3]/div[2]/div/div[4]'
  element :patient_list, :xpath, '/html/body/div[20]/div[2]/div/div/div[5]/div'

  element :name, '#nomeDadosFake'

end