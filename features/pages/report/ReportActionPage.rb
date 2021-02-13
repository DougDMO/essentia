class ReportActionPage < SitePrism::Page

  set_url '/action'
  element :title, '#title'
  element :text, '#tinymce'
  element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-edit-text-model/div/div[2]/div/div/div/form/div/div[2]/div/div/editor/div/div[1]/div[2]/div[1]'
  element :html, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-edit-text-model/div/div[2]/div/div/div/form/div/div[3]/div/div/editor/div/div[1]/div[2]'
  element :button_save, '#TDD-MODELANAMNESIS-save'

  element :radio_private_yes, '#profile > div.content.content-grid.no-search.animated.fadeIn.delay-1 > div > div > div > form > div > div:nth-child(2) > div > div > div:nth-child(1) > label'
  element :radio_private_no, '#profile > div.content.content-grid.no-search.animated.fadeIn.delay-1 > div > div > div > form > div > div:nth-child(2) > div > div > div.custom-control.custom-radio.ml-2 > label'

  element :input_doctor_create, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-model-text-edit/div/div[2]/div/div/esx-form/form/div[1]/div[2]/esx-select/esx-control/div/div/ng-select/div/div/div[2]/input'
  element :input_doctor_update, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-model-text-edit/div/div[2]/div/div/esx-form/form/div[1]/div[2]/esx-select/esx-control/div/div/ng-select/div/div/div[3]/input'
  element :first_doctor, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-model-text-edit/div/div[2]/div/div/esx-form/form/div[1]/div[2]/esx-select/esx-control/div/div/ng-select/ng-dropdown-panel/div/div[2]/div'

  element :success_message, '#toast-container'
end