class PendingAttendace < SitePrism::Page

  set_url '/'
  element :patient_pending, '#wrapper > div > fuse-toolbar > div > mat-toolbar > div > div.header-clinic > div'
  element :retomar, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-drafs-viewer/div/div/div[3]/ngb-accordion/div[1]/div/h5/button/div/div[4]/a[1]'
  element :excluir, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-drafs-viewer/div/div/div[3]/ngb-accordion/div/div/h5/button/div/div[4]/a[2]'
  element :expandir, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-drafs-viewer/div/div/div[3]/ngb-accordion/div/div/h5/button/div/div[5]'
  element :linha_expandir, :xpath,'/html/body/div[3]/div[2]/div/mat-dialog-container/app-drafs-viewer/div/div/div[3]/ngb-accordion/div/div/h5/button/div'
  element :numero_pendente, :xpath,'/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-toolbar/div/mat-toolbar/div/div[1]/div/span/div/span'
  element :confirma_delete, :xpath,'/html/body/div[3]/div[4]/div/mat-dialog-container/app-confirmation/div/div/button[2]'

end