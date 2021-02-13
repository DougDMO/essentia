class PrintLayoutPage < SitePrism::Page

  set_url '/print-layout/register'

  #form
  element :title_name, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[1]/input'

  #header default
  element :print_default, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[1]/div[1]'

  element :name_pdefault,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[2]/input'
  element :specialty_pdefault,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[3]/input'
  element :abbreviation_pdefault,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[4]/input'
  element :number_council_pdefault,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[5]/input'

  element :footer, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[1]/div'
  element :fileupload_footer, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[2]/esx-croppie/div/input', :visible => :all

  element :confirm_fileupload_footer, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[2]/esx-croppie/div/div/span[2]'



  # header letterhead
  element :print_letterhead, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[1]/div[2]'

  element :top_margin, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[1]/input'
  element :bottom_margin, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/div/div[2]/input'


  # header image
  element :print_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[1]/div[3]'

  element :remove_fileupload_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/esx-croppie/div/div[2]'

  element :fileupload_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/esx-croppie/div/input', :visible => :all
  element :confirm_fileupload_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[2]/div[2]/div/esx-croppie/div/div/span[2]'

  #Add

  element :show_date_default, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[1]'
  element :show_phone_default, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[2]'
  element :show_email_default, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[3]'

  element :show_date_letterhead, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[1]/div[1]'
  element :show_phone_letterhead, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[1]/div[2]'
  element :show_email_letterhead, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[3]/div[1]/div[3]'

  element :show_date_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[1]'
  element :show_phone_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[2]'
  element :show_email_image, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/div/div/div/div/div/form/div/div[4]/div[1]/div[3]'

  #buttons

  element :back, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/footer/div/div/button[1]'
  element :button_preview, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/footer/div/div/button[2]'
  element :save, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/esx-action-user-print/div/div[2]/footer/div/div/button[3]'


end

