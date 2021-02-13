class FoodPlanPage < SitePrism::Page

  set_url 'new'
  element :title, '#title'
  element :sub_title, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div/input'
  element :refeicao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/div/div/div[2]/input'
  element :refeicao_almoco, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
  element :search_food, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[2]/div/div[1]/div/ng-select/div/div/div[2]/input'
  element :add_food, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[2]/div/div[8]/button[3]'
  element :results1_food, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]/div'

  element :add_observacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[3]/div/div/button'
  element :observacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/food-planner/div/div/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[3]/div[1]/div/textarea'


  element :button_back, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/footer/button[1]'
  element :button_save, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan-action/div/div[2]/footer/button[2]'

end

class FoodPage < SitePrism::Page

  set_url 'food'
  element :name, '#name'

  element :medida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[1]/div[2]/ng-select/div/div/div[2]'
  element :result1_medida, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[1]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'

  element :peso_vol, '#baseServing'
  element :calorias,'#calories'

  element :grupo, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[1]/div[5]/ng-select/div/div/div[2]'
  element :result1_grupo, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[1]/div[5]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'

  element :carbo,'#carbo'
  element :protein,'#protein'
  element :lipids,'#lipids'

  element :micro_name, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[7]/div/div[1]/ng-select/div/div/div[2]'
  element :result1_micro_name, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[7]/div/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'

  element :micro_peso_vol,'#microWeight'

  element :switch_medida_caseira, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/form/div[8]/div/mat-slide-toggle'


  element :medida_caseira,'#measure'
  element :medida_caseira_peso_vol,'#amount'


  element :button_save, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/div/button[1]'
  element :button_save_add, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-register-food/div/div/div/button[2]'

end