class MenuPage < SitePrism::Page
  set_url '/'
  element :menu_schedule, '#TDD-menu-schedule'
  element :menu_patient, '#TDD-menu-patients'
  element :menu_formulas, '#TDD-menu-my-formulas'
  element :menu_injet, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/fuse-navbar-vertical/div[2]/fuse-navigation/div/fuse-nav-vertical-item[4]/a'
  element :menu_estoque, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/fuse-navbar-vertical/div[2]/fuse-navigation/div/fuse-nav-vertical-item[5]/a'
  element :menu_recipe, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/fuse-navbar-vertical/div[2]/fuse-navigation/div/fuse-nav-vertical-collapse[1]/div/fuse-nav-vertical-item[4]/a'
  element :menu_food_plan, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/fuse-navbar-vertical/div[2]/fuse-navigation/div/fuse-nav-vertical-collapse[1]/div/fuse-nav-vertical-item[3]/a'
  element :menu_model, '#TDD-menu-models'
  element :menu_anamnese, '#TDD-menu-models-anamnese'
  element :menu_exams_guide, '#TDD-menu-models-guia-exames'
  element :menu_guidance, '#TDD-menu-models-orientacao'
  element :menu_report, '#TDD-menu-models-laudos'
  element :menu_sick_note, '#TDD-menu-models-atestados'
  element :menu_pre_app, '#TDD-menu-models-quiz-model'

  element :menu_clinics, '#TDD-menu-clinics'
  element :menu_clinics_clinics, '#TDD-menu-clinics-clinics'
  element :menu_clinics_employees, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/fuse-navbar-vertical/div[2]/fuse-navigation/div/fuse-nav-vertical-collapse[2]/div/fuse-nav-vertical-item[3]/a'
  element :menu_clinics_team, '#TDD-menu-clinics-team'

  element :menu_setup, '#TDD-menu-setup'
  element :menu_setup_user, '#TDD-menu-setup-user-settings'
  element :menu_setup_site, '#TDD-menu-setup-site-configuration'
  element :menu_setup_schedule, '#TDD-menu-setup-schedule-configuration'
  element :menu_setup_attendance, '#TDD-menu-setup-attendance-settings'
  element :menu_setup_print_layout, '#TDD-menu-setup-print-layout'

  element :menu_help, '#TDD-menu-help'
  element :menu_help_tutorial, '#TDD-menu-help-tutorial'
  element :menu_help_support, '#TDD-menu-help-support'


end