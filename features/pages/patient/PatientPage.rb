class PatientPage < SitePrism::Page

    set_url '/patients/register'

    element :fileupload,  '#fileupload'
    element :remove_upload,  '.text-remover'

    element :confirm_fileupload,:css,  '.confirmar'
    #Form
    element :person_name, :id, 'person.name'
    element :person_birth, :id, 'person.birthDate'
    element :person_rg, :id, 'person.rg'
    element :person_cpf, :id, 'person.cpf'

    element :person_email, :id, 'person.email'
    element :person_telephone, :id, 'person.telephone'

    element :profession, '#profession'
    element :mother_name, '#mother_name'
    element :father_name, '#parent_name'
    element :covenant, '#covenant'
    element :number_of_wallet, '#number_of_wallet'

    element :address_cep, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/div[1]/div/div/div[2]/div[2]/div[3]/component-address/form/div/div[1]/div/input'
    element :person_logradouro, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/div[1]/div/div/div[2]/div[2]/div[3]/component-address/form/div/div[2]/div/input'

    element :address_nr, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/div[1]/div/div/div[2]/div[2]/div[3]/component-address/form/div/div[3]/div/input'

    element :address_compl, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/div[1]/div/div/div[2]/div[2]/div[3]/component-address/form/div/div[4]/div/input'
    element :person_neighborhood, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/div[1]/div/div/div[2]/div[2]/div[3]/component-address/form/div/div[5]/div/input'

    element :contact, :id, 'contact'


    element :allergies, '.mat-chip-list > div > input'
    element :remove_allergies, '.mat-chip-trailing-icon mat-icon material-icons ng-star-inserted'

    element :veganfalse, '#label-vegan0'
    element :vegantrue, '#label-vegan1'


    element :calendar, '#mat-datepicker-5' 
    element :overlay_container, :css, '.cdk-overlay-backdrop'
    element :day, :xpath, '//*[@id="mat-datepicker-5"]/div/mat-month-view/table/tbody/tr[1]/td[2]/div'

    element :out_of_overlay_container, '#fuse-splash-screen', visible: :all


    element :info_additional, '#TDD-PATIENT-info-additional'
    element :info_medic, '#TDD-PATIENT-info-medic'


    element :gender_masc, '#label-person\.gender0'
    element :gender_fem, '#label-person\.gender1'

    element :annotations, '#note'

    element :not_email, :css, '.help-checkbox-required', match: :first

    #Actions
    element :save_button, '#TDD-NEWPATIENT-save'

    element :delete_button, :css,'.justify-content-end > button', match: :first
    element :back, '#TDD-NEWPATIENT-back'
    element :back_edit, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[1]/div/div[1]/div/div[3]/div/button[2]'
    element :back_edit_colab, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[1]/div/div[1]/div/div[2]/div/button[2]'

    #Atendimento
    element :tab3_medicalrecords, '#tab2-patient'
    element :replicar_atendimento, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[2]/div[1]/app-attendance-record/div[1]/div/button[1]'
    element :excluir_atendimento, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[2]/div[1]/app-attendance-record/div[1]/div/button[2]'
    element :expandir_atendimento, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-patient-action/div/div[2]/ngb-tabset/div/div/app-patient-records/div/div/div[2]/div[1]/app-attendance-record/div[1]/div/button[3]'

    #Pré Consulta
    element :tab3_medicalrecords, '#tab3-patient'
    element :pre_consult_record, '#TDD-PREAPPOINTMENT-view', match: :first
  end