class SiteConfigurationPage < SitePrism::Page

  set_url '/site-configuration'

  element :name, '#name'
  element :specialty, '#specialty'
  element :urlSite, '#urlSite'
  element :linkSite, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[3]/small/a'
  element :facebook_linkSite, :xpath,'/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/div/div[3]/div/div[1]'
  element :email_linkSite, :xpath,'/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/div/div[2]/div/a'
  element :emailContact, '#emailContact'
  element :textPresentation, '#textPresentation'
  element :showPresentation, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[6]/div/label'
  element :clear_contact_input, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[7]/component-contact/form/div/div[1]/div/ng-select/div/span[1]'
  element :contact_input, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[7]/component-contact/form/div/div[1]/div/ng-select/div/div/div[2]/input'
  element :contact_input_first, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :contact_text, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[7]/component-contact/form/div/div[2]/div/div[1]/input'
  element :clear_social_input, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[8]/component-contact/form/div/div[1]/div/ng-select/div/span[1]'
  element :social_input, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[8]/component-contact/form/div/div[1]/div/ng-select/div/div/div[2]/input'
  element :social_input_first, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :social_text, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[8]/component-contact/form/div/div[2]/div/div[1]/input'
  element :clinic,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[9]/div/div[1]/div'
  element :save,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/footer/button'

  element :edit_clinic,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-pre-query/div/div[2]/div/div/div/div/div[2]/form/div/div[9]/div/div[1]/button'
  element :save_clinic,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-clinic-action/div/div[2]/div[2]/button'


  #form email

  element :name_email,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[1]/div/div[1]/input'
  element :phone,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[1]/div/div[2]/input'
  element :email,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[1]/div/div[3]/input'
  element :assunto,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[1]/div/div[4]/input'
  element :mensagem,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[2]/textarea'
  element :send,:xpath, '/html/body/app-root/app-template-b/app-doctor/div/div[2]/div/form/div/div[3]/button'

end