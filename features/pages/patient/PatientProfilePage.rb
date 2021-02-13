class PatientProfilePage < SitePrism::Page

    set_url '/patients/'

    #Form
    element :delete, '#TDD-PATIENTPROFILE-delete'
    element :edit, '#TDD-PATIENTPROFILE-edit'
    element :new_appointment, '#TDD-PATIENTPROFILE-newappointment'
    element :send_pre_consult_profile , '#TDD-PATIENTPROFILE-sendquiz'
    element :medical_records , '#TDD-PATIENTPROFILE-medicalrecords'
    element :allergy , '#TDD-PATIENTPROFILE-allergy'
    element :medical_notes , '#medicalnotes'
    element :save, '#TDD-PATIENTPROFILE-save'
    element :close,'#topo > button > span > span'
    element :delete_allergy, :css ,'.easy-icon fechar size-10'

    #Tabs
    element :info_basic_tab, '#TDD-PATIENT-info-basic'
    element :info_additional_tab, '#TDD-PATIENT-info-additional'
    element :info_medic_tab, '#TDD-PATIENT-info-medic'

    #Delete confirmation
    element :delete_confirmation, '#TDD-COMMON-delete-confirmation'

    #pre consul
    element :send_email, :xpath, '/html/body/div[3]/div[4]/div/mat-dialog-container/quiz-trigger/div/div/div[1]/form/div[1]/div[2]/div[1]'
    element :send_wpp, :xpath, '/html/body/div[3]/div[4]/div/mat-dialog-container/quiz-trigger/div/div/div[1]/form/div[1]/div[2]/div[2]'

    element :pre_consult, :xpath,'/html/body/div[3]/div[4]/div/mat-dialog-container/quiz-trigger/div/div/div[1]/form/div[1]/div[3]/ng-select/div/div/div[2]'
    element :list1_pre_consult, :xpath,'/html/body/ng-dropdown-panel/div/div[2]/div'

    element :tele_consultation, '#TDD-PATIENTPROFILE-telemedicina'
    element :termo_consentimento, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[2]/div[1]/span[1]/u'
    element :send_termo_consentimento, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[2]/div[2]/button'

    element :meet, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[3]/div[1]/div'
    element :skype, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[3]/div[2]/div'
    element :whereby, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[3]/div[3]/div'
    element :whatsapp, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[3]/div[4]/div'

    element :observations, :xpath,'/html/body/div[3]/div[4]/div/mat-dialog-container/quiz-trigger/div/div/div[1]/form/div[1]/div[4]/textarea'
    element :consentimento, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[2]/div[1]/span[1]/u'
    element :send_consentimento, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-telemedicina/div/div/div[2]/div[2]/button'

    element :send_pre_consult, :xpath, '/html/body/div[3]/div[4]/div/mat-dialog-container/quiz-trigger/div/div/div[1]/form/div[2]/button'

end
