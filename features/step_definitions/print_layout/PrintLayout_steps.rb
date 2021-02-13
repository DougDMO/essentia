printlayout_list = PrintLayoutListPage.new
commonaction = CommonActionPage.new

Given("I am on Print Layout page") do
  @layout_name = 'The Layout ' + rand(9999).to_s
  @layout_new = NewPrintLayout.new
end

Given("I click on new Print Layout") do
  printlayout_list.new_print_layout.click
  sleep 2
end

When("I fill the default Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.fill_form_default
end

When("I fill the default Print Layout form incomplete") do
  @layout_new.set_name(@layout_name)
  @layout_new.fill_form_default_incomplete
end

When("I edit the default Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.edit_fill_form_default
end

When("I fill the Letterhead Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.fill_form_letterhead
end

When("I edit the Letterhead Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.edit_fill_form_letterhead
end


When("I fill the Image Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.fill_form_image
end

When("I edit the Image Print Layout form") do
  @layout_new.set_name(@layout_name)
  @layout_new.edit_fill_form_image
end

When("I save the Print Layout") do
  @layout_new.save
end

When("I back to the List Print Layout") do
  @layout_new.back
  sleep 2
end

Then("I see the Print Layout saved on list") do
  expect(page).to have_content(@layout_name)
end

Given("I select the second Print Layout to view") do
  printlayout_list.second_view.click
  sleep 2
end

Given("I select the second Print Layout to edit") do
  printlayout_list.second_edit.click
  sleep 2
end

Given("I select the second Print Layout to delete") do
  printlayout_list.second_delete.click
  sleep 2
end

When("I confirm to delete the Print Layout") do
  commonaction.delete_confirmation2.click
  sleep 2
end

Then("I don't see the Print Layout on list") do
  expect(page).to have_no_content('The Layout ')
end

Given("I remove {string} Print Layout") do |string|
  string=string.to_i
  for x in 1..string
    printlayout_list.second_delete.click
    sleep 2
    commonaction.delete_confirmation.click
    sleep 2
    expect(page).to have_no_content('Excluído com sucesso')
  end

end


