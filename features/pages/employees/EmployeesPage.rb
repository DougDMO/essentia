class EmployeesPage < SitePrism::Page

    set_url '/employees/register'

    element :name,  '#person\.name'
    element :gender_masc, '#label-person\.gender0'
    element :gender_fem, '#label-person\.gender1'
    element :email,  '#access\.email'
    element :password,  '#access\.password'
    element :password_confirm,  '#access\.password_confirm'
    element :rg,  '#person\.rg'
    element :cpf,  '#person\.cpf'
    element :telephone,  '#person\.telephone'
    element :job_role,  '#job_role'
    element :work_passport,  '#work_passport'
    element :pis_passep,  '#pis_passep'
    element :first_clinic, :xpath,  '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[2]/div[1]/div/div/div/div/div[1]/div/div/div/div[1]/div/mat-checkbox/label/div'

    #Actions
    element :save, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[1]/div/div[1]/div/div[2]/div/span/button'
    element :back, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[1]/div/div[1]/div/div[2]/div/a'

    element :first_tab, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[2]/div[1]/div/div/div/div[1]/div[1]/button'
    element :second_tab,:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-employees-action/div/div[2]/div[1]/div/div/div/div[1]/div[2]/button'

  end