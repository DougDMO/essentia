class ScheduleConfig < SitePrism::Page

  set_url '/schedule-configuration'

  element :exibicao_padrao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/esx-form/form/div/div[1]/esx-select/esx-control/div/div/ng-select/div/div/div[3]/input'
  element :start_hour, '#hourServiceStart'
  element :end_hour, '#hourServiceEnd'
  element :check_domingo, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[1]/mat-checkbox/label/div/input'
  element :check_segunda, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[2]/mat-checkbox/label/div/input'
  element :check_terca, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[3]/mat-checkbox/label/div/input'
  element :check_quarta, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[4]/mat-checkbox/label/div/input'
  element :check_quinta, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[5]/mat-checkbox/label/div/input'
  element :check_sexta, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[6]/mat-checkbox/label/div/input'
  element :check_sabado, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[1]/div/div[7]/mat-checkbox/label/div/input'
  element :alert_daily, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[3]/div[1]/div/mat-checkbox/label/div/input'
  element :alert_patients, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[3]/div[3]/div/mat-checkbox/label/div/input'
  element :save, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[2]/div[4]/span/button'
  element :last_delete, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[3]/esx-procedure/div/div[3]/span/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[5]/datatable-body-row/div[2]/datatable-body-cell[4]/div/div/span[2]/a[2]'

  #schedule procedure

  element :new_procedure, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula-action/div/div[2]/div/div/div/div[3]/esx-procedure/div/div[2]/span/button'
  element :name_procedure, '#name'
  element :time_procedure, '#timeService'
  element :color_procedure, '#color'
  element :input_color_procedure, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[1]/esx-form/form/div[2]/div[2]/esx-input/esx-control/div/div/div[1]/div/color-picker/div/div[6]/div[1]/input'
  element :diagram_color, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[1]/esx-form/form/div[2]/div[2]/esx-input/esx-control/div/div/div[1]/div/color-picker/div/div[7]'
  element :color_b, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[1]/esx-form/form/div[2]/div[2]/esx-input/esx-control/div/div/div[1]/div/color-picker/div/div[5]/div[1]/input[3]'
  element :ok_color_procedure, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[1]/esx-form/form/div[2]/div[2]/esx-input/esx-control/div/div/div[1]/div/color-picker/div/div[8]/button'


  element :save_procedure, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[2]/button'



end