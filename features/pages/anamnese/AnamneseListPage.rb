class AnamneseListPage < SitePrism::Page

  set_url '/text-model/type/anamnese'
  element :button_new, '#TDD-MODELANAMNESIS-new'
  element :button_edit, '#TDD-MODELANAMNESIS-edit'
  element :button_delete, '#TDD-MODELANAMNESIS-delete'

  element :search, '#TDD-COMMON-search'
  
  element :first_button_new, '#TDD-MODELANAMNESIS-new', match: :first
  element :first_button_edit, '#TDD-MODELANAMNESIS-edit', match: :first
  element :first_button_delete, '#TDD-MODELANAMNESIS-delete', match: :first
  element :first_button_view, '#TDD-MODELANAMNESIS-view', match: :first
end