class FormulasListPage < SitePrism::Page

  set_url '/my-formulas'

  #top
  element :systemformula, '#TDD-MYFORMULA-systemformula'
  element :reserach_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/div/div[1]/form/div/div/div[1]/div/input'
  element :list1_reserach_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/div/div[1]/form/div/div/div[2]/div/div[2]'
  element :close_reserach_systemformula, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-edit-manual-prescription/div/mat-toolbar/div/button'

  element :view_formula, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-my-formulas/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper'


  element :research, '#TDD-MYFORMULA-filter'
  element :new_formula, '#TDD-MYFORMULA-new'

  #list

  element :view, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-my-formulas/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[1]'
  element :close_view, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-my-formulas-view/div/mat-toolbar/button'
  element :edit, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-my-formulas/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[2]'
  element :delete,:xpath,  '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-my-formulas/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[3]'

 end