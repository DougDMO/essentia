class ReportListPage < SitePrism::Page

  set_url '/text-model/type/laudos'
  #element :button_new, '#wrapper > div > fuse-content > esx-procedure-settings > div > div.header-bar.header-grid.sticky-top > div > div.header-top.container-fluid.p-0 > div > div.bottom-xs > button'
  element :button_new, '#TDD-MODELANAMNESIS-new'
  element :button_delete, '#TDD-MODELANAMNESIS-delete', match: :first
 
  element :delete_confirmation, '#TDD-COMMON-delete-confirmation'
  element :detele_cancel, '#TDD-COMMON-delete-confirmation'

  element :view_duplicate, '#TDD-COMMON-view-duplicate'
  element :view_edit, '#TDD-COMMON-view-duplicate' 

  element :search, :css, 'input[type="search"]'

  element :first_button_new, '#TDD-MODELANAMNESIS-new', match: :first
  element :first_button_edit, '#TDD-MODELANAMNESIS-edit', match: :first
  element :first_button_delete, '#TDD-MODELANAMNESIS-delete', match: :first
  element :first_button_view, '#TDD-MODELANAMNESIS-view', match: :first
end