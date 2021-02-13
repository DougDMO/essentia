class ClinicsPage < SitePrism::Page

  set_url '/clinics'

  element :title_page, '#wrapper > div > fuse-content > app-clinics > div > div.header-bar.header-grid.sticky-top > div > div > div > div.header-title.d-flex.align-items-center > div > span'
  element :menu_name, '#wrapper > div > fuse-toolbar > div > mat-toolbar > div > div.ng-star-inserted > button'
  element :menu_sair_option, '.cdk-overlay-pane > div >div > div > button'
  element :menu_sair_optionA, '.cdk-overlay-pane > div >div > div > button:nth-child(2)'

  #try to remove this
  element :clinic_name, '#wrapper > div > fuse-content > app-clinics > div > div.content-clinics.content-grid.no-search.ng-star-inserted > div > div > div > div:nth-child(1)'

  element :button_new, '#TDD-SELECTCLINIC-add' 

  #POP-UP new clinic
  element :name_field, '#name'
  element :cep_field, '#wrapper > div > fuse-content > app-clinic-action > div > div.content.content-pL30 > div.panel-item.ng-star-inserted > div > div:nth-child(1) > div.col-md-9 > div > component-address > form > div > div:nth-child(1) > div > input'
  element :nr_field, '#wrapper > div > fuse-content > app-clinic-action > div > div.content.content-pL30 > div.panel-item.ng-star-inserted > div > div:nth-child(1) > div.col-md-9 > div > component-address > form > div > div:nth-child(3) > div > input'
  element :compl_field, '#wrapper > div > fuse-content > app-clinic-action > div > div.content.content-pL30 > div.panel-item.ng-star-inserted > div > div:nth-child(1) > div.col-md-9 > div > component-address > form > div > div:nth-child(4) > div > input'
  element :confirm_upload, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-clinic-action/div/div[2]/div[1]/div/div[1]/div[1]/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-croppie/div/div/span[2]'


  element :button_save, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-clinic-action/div/div[2]/div[2]/button'

  #CARD Clinic
  element :first_clinic_container, :css, '.cards-custom-container', match: :first
  element :invited_clinic_container, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-clinics/div/div[2]/div/div[2]/div[2]/div/div'
  element :first_clinic_name, :css, '.name-clinic', match: :first

  #CARD Clinic - action buttons
  element :action_button, :css, 'button[aria-label="more"]', match: :first
  element :action_button_edit, :css, 'button[id^=TDD-CLINIC-select-edit]'
  element :action_button_delete, :css, 'button[id^=TDD-CLINIC-select-delete'


  #employee

  element :edit_employees, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-organizations/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[5]/div/div/span[2]/a[1]'
  element :edit_perm_employees, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[2]/div[1]/div/div/div/div/div[1]/div/div/div/div[1]/div/span/span'

  element :schdeule_perm_employees, :xpath, '/html/body/ngb-modal-window/div/div/div/div[2]/div[1]/div/div[2]/div[2]/div[1]/mat-checkbox/label'
  element :patient_perm_employees, :xpath, '/html/body/ngb-modal-window/div/div/div/div[2]/div[1]/div/div[2]/div[3]/div[1]/mat-checkbox/label'
  element :model_perm_employees, :xpath, '/html/body/ngb-modal-window/div/div/div/div[2]/div[1]/div/div[2]/div[4]/div[1]/mat-checkbox/label'
  element :save_perm_employees, '.clinicPre > .justify-content-end > button'


  #importer

  element :importer, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-importer/div/div[1]/div/div[2]/button[1]'
  element :no_importer, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-importer/div/div[1]/div/div[2]/button[2]'

end