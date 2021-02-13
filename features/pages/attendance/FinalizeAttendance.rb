class FinalizeAttendance < SitePrism::Page

  set_url '/patient/attendance'
  element :check_prescricao, '#prescriptionPatientCheck-f'
  element :check_prescricao_copy, '#prescriptionCopyCheck-f'
  element :check_pedido_exame, '#guideExamsPatientCheck-f'
  element :check_orientacao, '#orientationPatientCheck-f'
  element :check_plano_alimentar, '#foodPlanCheck-f'
  element :check_avalicao_corporal, '#bodyComposition-f'
  element :check_pharma,:xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div[1]/div[2]/div[4]/form/div[2]/div[2]/div[1]/label'
  element :check_doctor, '#pharma_1'
  element :check_doctor2, '#pharma_2'
  element :email_patient, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div[1]/div[2]/div[4]/form/div[1]/div[7]/div/input'
  element :print_all, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[2]/div[3]/span'
  element :email, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[2]/div[4]/form/div[1]/div[4]/div/input'
  element :copy_prescricao, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[2]/div[4]/form/div[1]/div[2]/div/label'
  element :copy_email_prescricao, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[2]/div[4]/form/div[1]/div[2]/div[2]/mat-chip-list/div/input'
  element :save, :xpath, '/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[2]/div[5]/button'

end