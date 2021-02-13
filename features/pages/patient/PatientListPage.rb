class PatientListPage < SitePrism::Page

  set_url '/patients'
  element :new_patient, '#TDD-PATIENT-new'
  element :start_care, '.startAttendance', match: :first
  element :medical_records, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[2]'
  element :patient_quiz, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[3]'
  element :patient_information, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[4]'

  element :tab_exams, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/ul/li[4]'
  element :new_results_exams, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/patient-exam-history/div/div/div/div/div/div[1]/button'
  element :input_results_exams, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-exam-result/div/div/esx-form/form/div[2]/div/esx-select/esx-control/div/div/ng-select/div/div/div[2]/input'
  element :cadastra_type_exams, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-exam-result/div/div/esx-form/form/div[2]/div/esx-select/esx-control/div/div/ng-select/ng-dropdown-panel/div/div[2]/div'
  element :salva_type_exams, :xpath, '/html/body/div[3]/div[4]/div/mat-dialog-container/app-exam-type/div/div/div/button[1]'
  element :results_exams, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-exam-result/div/div/esx-form/form/div[3]/div/esx-input/esx-control/div/div/div[1]/div/input'
  element :save_results_exams, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-exam-result/div/div/div[1]/button'


  element :first_patient_list, :css, '.datatable-row-wrapper', match: :first
  element :research, '#TDD-PATIENT-search'

  element :share, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[1]/div/div[1]/div/div[2]/span/button'
  element :yes_share, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[1]/div[1]/mat-slide-toggle/label/div/div'

  element :share_attendance, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[1]/div[2]/esx-form[1]/form/div/div[1]/esx-checkbox/esx-control/div/div/div[1]/label'
  element :share_pre_consult, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[1]/div[2]/esx-form[1]/form/div/div[2]/esx-checkbox/esx-control/div/div/div[1]/label'
  element :share_exames, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[1]/div[2]/esx-form[1]/form/div/div[3]/esx-checkbox/esx-control/div/div/div[1]/label'
  element :share_doctor, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[1]/div[2]/esx-form[2]/form/div/div/esx-select/esx-control/div/div/ng-select/div'
  element :share_doctor_input, :xpath, '/html/body/ng-dropdown-panel/div/div[2]/div/div'
  element :save_share, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-share/div/div/div[3]/button'

  element :filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/div'
  element :consulta_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[2]'
  element :avaliacaocorp_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[3]'
  element :gastoenerg_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[4]'
  element :pedidoexames_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[5]'
  element :prescricao_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[6]'
  element :planoalimentar_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[7]'
  element :orientacao_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[8]'
  element :laudo_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[9]'
  element :atestado_filter, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[1]/ng-select/ng-dropdown-panel/div[1]/div[2]/div[10]'


 end