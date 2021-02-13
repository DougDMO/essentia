class FoodPlanListPage < SitePrism::Page

  set_url '/food-plan'
  element :button_new, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[1]/div/div[1]/div/div[4]/button'

  element :button_view, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[1]'
  element :button_view_close, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-food-plan-previewer/div/mat-toolbar/div/div[2]/button'

  element :button_edit, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[2]'
  element :button_delete, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[3]'

  element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[1]/div/div[1]/div/div[3]/div/input'
  element :add_food, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[1]/div/div[1]/div/div[2]/button'

end

class FoodListPage < SitePrism::Page

  set_url '/food'
  element :button_new, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food/div/div[1]/div/div[1]/div/div[3]/button'

  element :button_edit, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[1]'
  element :button_delete, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[2]/div/div/span[2]/a[2]'

  element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food/div/div[1]/div/div[1]/div/div[2]/div/input'

end