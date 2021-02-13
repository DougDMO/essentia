formulas_list = FormulasListPage.new
commonaction = CommonActionPage.new

Given("I am on Formulas page") do
  @formulas_name = 'The Formulas ' + rand(9999).to_s
  @trim_name = '    Formulas'
  @formulas_new = NewFormulas.new
  @formulaspage = FormulasPage.new
end

Given("I research formula") do
  formulas_list.research.set 'The Formulas '
  sleep 2
end

Given("I click on a formula") do
  formulas_list.view_formula.click
  sleep 2
end

Given("I click on new formulas") do
  formulas_list.new_formula.click
  sleep 2
end

When("I fill the formulas form") do
  @formulas_new.set_name(@formulas_name)
  @formulas_new.fill_form
  within_frame(@formulaspage.iframe) {
    @formulaspage.text.set "Remédio 1 -> 50mg de 8 em 8 horas"
  }
end

When("I fill the formulas form - name trim") do
  @formulas_new.set_name(@trim_name)
  @formulas_new.fill_form
  within_frame(@formulaspage.iframe) {
    @formulaspage.text.set "Remédio 1 -> 50mg de 8 em 8 horas"
  }
end

When("I edit the formulas form") do
  @formulas_new.set_name(@formulas_name)
  @formulas_new.edit_fill_form
  within_frame(@formulaspage.iframe) {
    @formulaspage.text.set "Remédio 2 -> 50mg de 8 em 8 horas (editado)"
  }
end

When("I save the formula") do
  @formulas_new.save
  sleep 2
end

Then("I see the formula saved on list") do
  expect(page).to have_content(@formulas_name)
end


Given("I select the first formula to view") do
  formulas_list.view.click
  sleep 2
end

Given("I select the first formula to edit") do
  formulas_list.edit.click
  sleep 2
end

Given("I select the first formula to delete") do
  formulas_list.delete.click
  sleep 2
end

When("I confirm to delete the formula") do
  commonaction.delete_confirmation2.click
  sleep 2
end

Then("I don't see the formula on list") do
  expect(page).to have_no_content('The Formulas ')
end

Given("I remove {string} formulas") do |string|
  string=string.to_i
  for x in 1..string
    formulas_list.delete.click
    sleep 2
    commonaction.delete_confirmation.click
    sleep 2
  end

end


