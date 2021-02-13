class UserPreferPage < SitePrism::Page

  set_url '/user-settings'

  element :name, '#name'
  element :email_copy, '#email_copy'
  element :remove_speci, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/esx-form[3]/form/div[1]/div[1]/esx-select/esx-control/div/div/ng-select/div/span[1]'
  element :other_speci, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/esx-form[3]/form/div[1]/div[1]/esx-select/esx-control/div/div/ng-select/div/span[1]'
  element :other_speci_first, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :siglaConselho, '#siglaConselho'
  element :crmCrn, '#crmCrn'
  element :remove_estado, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/esx-form[4]/form/div/div[1]/esx-select/esx-control/div/div/ng-select/div/span[1]'
  element :remove_bairro, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/esx-form[4]/form/div/div[2]/esx-select/esx-control/div/div/ng-select/div/span[1]'
  element :farmacy_name,:xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div[6]/div/div[1]/div[1]/div[1]/input'
  element :email_farmacy, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div[6]/div/div[1]/div[1]/div[2]/input'
  element :farmacy_name2,:xpath,  '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div[6]/div/div[2]/div[1]/div[1]/input'
  element :email_farmacy2,:xpath,  '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div[6]/div/div[2]/div[1]/div[2]/input'

  element :workPassport,'#workPassport'
  element :pisPassep,'#pisPassep'


  element :password_current, '#password_current'
  element :password_new, '#password_new'
  element :password_confirm, '#password_confirm'

  element :close_help, :xpath,'/html/body/conpass/div/div[2]/div[1]'

  element :save, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-user-settings/div/div[2]/div/div[2]/span/button'




end