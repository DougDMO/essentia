class EstoquePage < SitePrism::Page

  set_url '/estoque/item'

  element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[1]/div/div[1]/div/div[2]/div/input'
  element :new_item, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[1]/div/div[1]/div/div[3]/button'
  element :entrada, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[1]/div/div[1]/div/button[1]'
  element :saida, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[1]/div/div[1]/div/button[2]'

  element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[6]/div/div/span[1]/a[1]'
  element :excluir, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-item/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[6]/div/div/span[1]/a[2]'

  #novo item
  element :name, '#name'
  element :presentation, '#presentation'
  element :lot, '#lot'
  element :validity, '#validity'
  element :quantity_in_stock, '#quantity_in_stock'
  element :save, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[2]/button'

  #Entrada item
  element :search_item_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[1]/div[1]/ng-select/div/div/div[2]/input'
  element :input_item_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[1]/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
  element :type_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[1]/ng-select/div'
  element :list2_type_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[2]'
  element :data_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[2]/input'
  element :nr_documento_entrada, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[3]/input'
  element :clinic, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[4]/ng-select/div/div/div[2]'
  element :list1_clinic, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :observacao1, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-entrystock/div/div/form/div[1]/div[2]/div/div/div[5]/textarea'
  element :save_new, '#save-and-new'
  element :save_outstock, '#save-outstock'

  #Saida item
  element :qtdsaida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[1]/div[2]/div/div[1]/input'
  element :search_item_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[1]/div[1]/ng-select/div/div/div[2]/input'
  element :input_item_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[1]/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
  element :type_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[1]/ng-select/div/div'
  element :list3_type_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[3]'
  element :data_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[2]/input'
  element :nr_documento_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[3]/input'
  element :clinic_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[4]/ng-select/div/div/div[2]/input'
  element :list1_clinic_saida, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div[1]'
  element :patient_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[5]/ng-select/div'
  element :list1_patient_saida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[5]/ng-select/ng-dropdown-panel/div/div[2]/div'
  element :observacao2, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-outstock/div/div/form/div/div[2]/div/div/div[6]/textarea'

end

