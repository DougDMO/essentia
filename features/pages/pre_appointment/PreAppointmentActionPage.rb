class PreAppointmentActionPage < SitePrism::Page

  set_url '/action'
  element :name, '#name'
  
  element :button_save, '#TDD-PREAPP-save-button'
  element :button_back, '#TDD-PREAPP-back-button'

  element :radio_private_yes, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-quiz-model-action/div/div[2]/div/div/div/div/esx-form/form/div/div[2]/esx-radio/esx-control/div/div/div/div[1]/label'
  element :radio_private_no, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-quiz-model-action/div/div[2]/div/div/div/div/esx-form/form/div/div[2]/esx-radio/esx-control/div/div/div/div[2]/label'

  element :input_doctor_create, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-quiz-model-action/div/div[2]/div/div/div/div/esx-form/form/div/div[2]/esx-select/esx-control/div/div/ng-select/div/div/div[2]/input'
  element :first_doctor, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-quiz-model-action/div/div[2]/div/div/div/div/esx-form/form/div/div[2]/esx-select/esx-control/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]'


  element :component_header, '#TDD-PREAPP-header'
  element :component_unique_response, '#TDD-PREAPP-radio-group'
  element :component_discursive_response, '#TDD-PREAPP-textarea'
  element :component_multiple_responses, '#TDD-PREAPP-checkbox-group'
  element :component_text_area, '#TDD-PREAPP-subtitle'

  element :drop_target, '#TDD-PREAPP-droppable'

  element :success_message, '#toast-container'
end