class SchedulePage < SitePrism::Page

  set_url '/schedule'
  element :title_page, "Agenda"

  element :new_schedule_button, '#TDD-SCHEDULE-new'
  
  #Filters - Left
  element :today_filter_button, '#TDD-CALENDAR-btn-hoje'
  element :calendar_filter_select, '#TDD-CALENDAR-filter'

  #Filters -Right
  element :filter_month, '#TDD-CALENDAR-month'
  element :filter_week, '#TDD-CALENDAR-week'
  element :filter_day, '#TDD-CALENDAR-day'

  element :filter_accordion, '#TDD-SCHEDULE-filter-list'

  element :right_calendar, '#TDD-CALENDAR-right'
  #New schedule####
  element :procedure, '#procedure' 
  element :procedure_field, '#procedure > div > div > div.ng-input > input[type=text]'

  element :doctor, '#doctor'
  element :patient, '#inputPatient'
  element :patient_info, :css, '.patientInfo', match: :first
  element :edit_patient_profile, '#TDD-PATIENTPROFILE-edit'
  element :patient_select, :css, 'mat-option[role="option"]', match: :first

  element :add_patient, '#TDD-CALENDAR-add-patient'
  element :save_button, '#TDD-CALENDAR-save'
  element :alert_save, '#toast-error' #toast-message

  element :start_date, '#startDate'
  element :start_date1, '#mat-datepicker-2 > div > mat-month-view > table > tbody > tr:nth-child(4) > td:nth-child(3) > div'

  element :start_time, '#startTime'
  element :end_time, '#endTime'

  element :t_schedule, '#calendarContent > ng-fullcalendar > div > div > table > tbody > tr > td > div > div > div.fc-content-skeleton > table > tbody > tr > td:nth-child(2) > div > div:nth-child(2) > a'


  element :close_edit_schedule, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/button'
  element :edit_schedule_button, '#mat-dialog-0 > app-mini-info > div > div > div.actionsHeaderDialog.ng-star-inserted > button.easy-icon.editar.size-22.button.mt-8.text-primary.pointer.ml-auto.ng-star-inserted'
  element :edit_schedule_button2, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-mini-info/div/div/div[2]/button[1]'

  element :delete_schedule_button, '#mat-dialog-0 > app-mini-info > div > div > div.actionsHeaderDialog.ng-star-inserted > button.easy-icon.excluir.size-22.button.mt-8.text-primary.pointer.ng-star-inserted'

  element :confirm_edit_date, '#TDD-COMMON-confirm-confirmation'
  element :confirm_send_email, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/send-mail-dialog/div/div[2]/div/button'
  element :close_warning_edit_date, '#mat-dialog-title-2 > div > div.actionsHeaderDialog > button'
  element :cancel_edit_date, '#TDD-COMMON-confirm-cancel'
  element :confirm_delete_schedule_button, '#delete-schedule-modal > app-delete-modal > div > div.m-0.p-16.mat-dialog-actions > button.notClass.m-12.btn-color.mL15.mat-raised-button.mat-accent.border-0'
  element :delete_schedule_button2, '#TDD-CALENDAR-delete'

  element :send_email, :css, '.enviar-email > div',match: :first
  element :send_wpp,:css,'.enviar-whatsapp > div',match: :first

  element :add_pre_consult, :css, '.pre-conculta',match: :first

  element :add_orientation, :css, '.orientacao',match: :first

  class SelectSection < SitePrism::Section
    element :selected_0, '#a48fd9ce1a8c-0'
    element :selected_1, '#a48fd9ce1a8c-1'
    element :selected_2, '#a48fd9ce1a8c-2'
  end

  section :my_select_box, SelectSection, '#procedure'


  class CalendarmSection < SitePrism::Section
    #element :procedure, '#procedure' # match: :first
  end

  section :calendar_section, CalendarmSection, 'div#content'

end

