class InjetaveisPage < SitePrism::Page

  set_url '/injetaveis/formula'

  element :meus_pedidos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[1]/div[1]/div/div[1]/div/div[2]/div[1]/button'
  element :search_pedidos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-orders/div/div[1]/div/div[1]/div/div[2]/div/input'
  element :details_pedidos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-orders/div/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[6]/div/div/span/a'
  element :repetir_pedido, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-orderdetails/div/div/div[1]/div[3]/button'
  element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[1]/div[1]/div/div[1]/div/div[2]/div[2]/input'
  element :carrinho, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[1]/div[1]/div/div[1]/div/div[2]/button'
  element :close_carrinho, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[1]/button'
  element :list1_injetaveis, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[1]/div[2]/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper[1]/datatable-body-row/div[2]/datatable-body-cell[5]/div/div/span/span'
  element :reduz_item1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[1]/div[2]/button[1]'
  element :aumenta_item1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[1]/div[2]/button[2]'
  element :remove_item1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[1]/div[3]/button'
  element :continuar_comprando1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[3]/div[1]/button'
  element :continuar_comprando2, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[4]/div[1]/button'
  element :finalizar_compra1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[3]/div[2]/button'
  element :finalizar_compra2, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-formula/div[2]/div[2]/div[4]/div[2]/button'
  element :clinics_address, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/ngx-stepper/div/ngx-step-body[2]/div/form/div/div/div[2]/ng-select/div/div/div[2]/input'
  element :input_clinics_address, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/ngx-stepper/div/ngx-step-body[2]/div/form/div/div/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div'
  element :logradouroNumero, '#logradouroNumero'
  element :cep, '#cep'
  element :proximo1, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/div/button'
  element :proximo2, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/div/button[2]'
  element :boleto, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/ngx-stepper/div/ngx-step-body[3]/div/div/div[2]/label'
  element :credit_card, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-carrinho/div/div/div[1]/ngx-stepper/div/ngx-step-body[3]/div/div/div[1]/label'




end

