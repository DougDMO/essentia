class FormulasPage < SitePrism::Page

  set_url '/my-formulas/register'

  #form
  element :name, '#name'
  element :search_formulas, '#TDD-newformula-search'

  element :reserach_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/div[1]/div[1]/form/div/div/div[1]/div/input'
  element :list1_reserach_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/div[1]/div[1]/form/div/div/div[2]/div[2]/div[2]'
  element :add_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/div[2]/button'

  element :key_words, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-components/div/div[2]/div/div/div/div/div[2]/div/esx-form/form/div/div[1]/esx-chips-list/esx-control/div/div/mat-chip-list/div/input'
  element :restrict_true, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-components/div/div[2]/div/div/div/div/div[2]/div/esx-form/form/div/div[2]/esx-radio/esx-control/div/div/div/div[1]'
  element :restrict_false, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-components/div/div[2]/div/div/div/div/div[2]/div/esx-form/form/div/div[2]/esx-radio/esx-control/div/div/div/div[2]'

  element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-components/div/div[2]/div/div/div/div/div[3]/div'
  element :iframe, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-components/div/div[2]/div/div/div/div/div[3]/div/editor/div/div[1]/div[2]/div[1]/iframe'
  element :text, '#tinymce'


  #buttons

  element :save, '#TDD-newformula-save'
  element :back, '#TDD-newformula-back'

end

