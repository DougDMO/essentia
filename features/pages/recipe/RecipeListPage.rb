class RecipeListPage < SitePrism::Page

  set_url '/model-recipe'
  element :button_new, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model/div/div[1]/div/div[1]/div/div[2]/span/button'

  element :button_view, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[3]/div/div/span[2]/a[1]'
  element :button_view_duplicate, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-recipe-preview/div/div[2]/button[1]'

  element :button_view_edit, :xpath, '/html/body/div[2]/div[2]/div/mat-dialog-container/app-recipe-preview/div/div[2]/button[2]'

  element :button_edit, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[3]/div/div/span[2]/a[2]'
  element :button_delete, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[3]/div/div/span[2]/a[3]'

  element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-recipe-model/div/div[1]/div/div[1]/div/span/div/input'

end