class PreAppointmentListPage  < SitePrism::Page

  set_url '/quiz-model'

  element :button_new, '#TDD-PREAPPOINTMENT-new'
  element :button_delete, '#TDD-PREAPPOINTMENT-delete'

  element :delete_confirmation, '#TDD-COMMON-delete-confirmation'
  element :delete_cancel, '#TDD-COMMON-delete-cancel'

  element :search, :css, 'input[type="search"]'

  element :first_button_edit, '#TDD-PREAPPOINTMENT-edit', match: :first
  element :first_button_delete, '#TDD-PREAPPOINTMENT-delete', match: :first
  element :first_button_view, '#TDD-PREAPPOINTMENT-view', match: :first
end