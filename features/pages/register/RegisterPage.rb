class RegisterPage < SitePrism::Page

  set_url '/register'

  #form 1
  element :full_name, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/fuse-register/div/div/div[2]/div[1]/form/div[4]/div[1]/div[1]/div/input'
  element :gener_fem, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(2) > div > div > div:nth-child(1)'
  element :gener_masc, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(2) > div > div > div.custom-control.custom-radio.ng-tns-c37-39.ml-3.ng-star-inserted'
  element :especialidade_principal, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(4) > div > ng-select > div > div > div.ng-input'
  element :especialidade_principal_i, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/fuse-register/div/div/div[2]/div[1]/form/div[4]/div[1]/div[3]/div/ng-select/div/div/div[3]/input'
  element :first_espec_princ, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :other_especialidade, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(5) > div > ng-select > div'
  element :first_other_espec, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :uf_conselho, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(10) > div > ng-select > div'
  element :first_uf_conselho, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'

  element :uf, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(6) > div > ng-select > div'
  element :first_uf, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'

  element :city_conselho, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(7) > div > ng-select > div > div > div.ng-input'
  element :first_city_conselho, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :sigla_conselho, '#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(9) > div > input'
  element :nr_conselho,'#register-form > div.content-login > form > div:nth-child(4) > div.row > div:nth-child(8) > div > input'

  element :next, '#register-form > div.content-login > form > div:nth-child(4) > div.mt-8 > button'

  element :login, '#register-form > div.register > span > a'

  #form 2

  element :email,  '#register-form > div.content-login > form > div:nth-child(5) > div:nth-child(1) > div:nth-child(1) > div > input'
  element :confirm_email, '#register-form > div.content-login > form > div:nth-child(5) > div:nth-child(1) > div:nth-child(2) > div > input'
  element :password, '#inputPassword'
  element :confirm_password, '#register-form > div.content-login > form > div:nth-child(5) > div:nth-child(1) > div:nth-child(4) > div > input'
  element :phone,'#register-form > div.content-login > form > div:nth-child(5) > div:nth-child(1) > div:nth-child(5) > div > input'
  element :robot, :xpath, '/html/body/div[2]/div[3]/div[1]/div/div/span'
  element :agree, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/fuse-register/div/div/div[2]/div[1]/form/div[5]/div[2]/div/div/mat-checkbox'
  element :back, '#register-form > div.content-login > form > div:nth-child(5) > div.d-flex.justify-content-between.mt-20 > button.btn-color.btn-color-hover.w-50-p.mb-0'
  element :create_account, '#register-form > div.content-login > form > div:nth-child(5) > div.d-flex.justify-content-between.mt-20 > button.register-button.btn-color.w-50-p.mb-0.mat-raised-button.mat-accent'



end