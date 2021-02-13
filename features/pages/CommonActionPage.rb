class CommonActionPage < SitePrism::Page

    set_url '/action'
    element :title, '#title'
    element :text, '#text'
    element :button_save, '#profile > div.content.content-grid.no-search > footer > div > button > span > span'
    element :success_message, '#toast-container'

    #Pop-up Excluir

    element :confirm_confirmation, '#TDD-COMMON-confirm-confirmation'
    element :delete_confirmation, :xpath, '/html/body/modal-container/div/div/app-confirmation/div/div/button[2]'
    element :delete_cancel, '#TDD-COMMON-delete-cancel'
    element :delete_confirmation2, '#TDD-COMMON-delete-confirmation'
    #Pop-up Visualizar
    element :view_duplicate, '#TDD-COMMON-view-duplicate'
    element :view_edit, '#TDD-COMMON-view-edit'
    element :view_close, 'TDD-COMMON-view-close'

    element :close_dialog, '#mat-dialog-title-1 > div > button'
  end