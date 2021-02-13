class RecipePage < SitePrism::Page

  set_url 'new'
  element :title, '#title'

  element :html, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model-action/div/div[2]/div/div/div/div/div/div/form/div[3]/span/div/editor/div/div[1]/div[2]/div[1]'
  element :iframe, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model-action/div/div[2]/div/div/div/div/div/div/form/div[3]/span/div/editor/div/div[1]/div[2]/div[1]/iframe'
  element :text, '#tinymce'

  element :food_plan, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model-action/div/div[2]/div/div/div/div/div/div/form/div[2]/div[1]/span[1]/button'
  element :food_plan_search, :xpath, '/html/body/div[4]/div[2]/div/mat-dialog-container/app-associate-food-plan/div/div[1]/div/div/div[1]/form/div/div[1]/input'
  element :food_plan_add, :xpath, '/html/body/div[4]/div[2]/div/mat-dialog-container/app-associate-food-plan/div/div[2]/button'

  element :button_back, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model-action/div/div[2]/footer/button[1]'
  element :button_save, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model-action/div/div[2]/footer/button[2]'

end