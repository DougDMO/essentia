class ExamsGuideListPage < SitePrism::Page

  set_url '/text-model/type/guia-exames'
  element :button_new, '#TDD-MODELANAMNESIS-new'
  element :button_view, '#TDD-MODELANAMNESIS-view'
  element :button_edit, '#TDD-MODELANAMNESIS-edit'
  element :button_delete, '#TDD-MODELANAMNESIS-delete'

  element :search, :css, 'input[type="search"]'

  element :first_exam, :css, '.datatable-row-wrapper', match: :first
  element :first_button_edit, '#TDD-MODELANAMNESIS-edit', match: :first
  element :first_button_delete, '#TDD-MODELANAMNESIS-delete', match: :first
  element :first_button_view, '#TDD-MODELANAMNESIS-view', match: :first
end