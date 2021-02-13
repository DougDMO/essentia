class SickNoteListPage < SitePrism::Page

  set_url '/text-model/type/atestados'
  element :button_new, '#TDD-MODELANAMNESIS-new'
  element :button_delete, '#wrapper > div > fuse-content > esx-procedure-settings > div > div.content.content-grid.ng-star-inserted > ngx-datatable > div > datatable-body > datatable-selection > datatable-scroller > datatable-row-wrapper:nth-child(1) > datatable-body-row > div.datatable-row-center.datatable-row-group.ng-star-inserted > datatable-body-cell:nth-child(3) > div > div > span.col-actions.float-right.d-none.d-lg-flex.ng-star-inserted > a.link-grid-1.color-a.ng-star-inserted'
  element :delete_confirmation, '#mat-dialog-0 > esx-dialog-delete > div > div.m-0.p-16.mat-dialog-actions > button.btn-color.mL15.mat-raised-button.ng-star-inserted'

  element :search, :css, 'input[type="search"]'

  element :first_button_new, '#TDD-MODELANAMNESIS-new', match: :first
  element :first_button_edit, '#TDD-MODELANAMNESIS-edit', match: :first
  element :first_button_delete, '#TDD-MODELANAMNESIS-delete', match: :first
  element :first_button_view, '#TDD-MODELANAMNESIS-view', match: :first
end