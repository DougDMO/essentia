class SupportPage < SitePrism::Page

  set_url '/support'

  #tutorial
  element :proximo0, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-tutorial-block/div/div/div[2]/button'
  element :proximo1, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-tutorial-block/div/div/div[2]/button[2]'

  element :proximo_colab, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-tutorial-block/div/div/div[2]/button'
  element :proximo1_colab, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-tutorial-block/div/div/div[2]/button[2]'
  #Support Page

  element :link_help, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[1]/div/div/div[1]/a'
  element :link_wpp, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[1]/div/div/div[2]/a'
  element :link_youtube, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[1]/div/div/div[3]/a'

  element :name, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[1]/div/input'
  element :email, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[2]/div/input'
  element :mensagem, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[4]/div/div/textarea'

  element :informacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[3]/div/mat-radio-group/mat-radio-button[1]'
  element :insatisfacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[3]/div/mat-radio-group/mat-radio-button[2]'
  element :sugestao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[3]/div/mat-radio-group/mat-radio-button[3]'
  element :solicitacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[3]/div/mat-radio-group/mat-radio-button[4]'
  element :elogio, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[3]/div[3]/div/mat-radio-group/mat-radio-button[5]'

  element :send, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-support-block/div/div[2]/div/div/form/div/div/div[5]/button'

end