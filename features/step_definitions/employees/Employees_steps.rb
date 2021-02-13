employees_list = EmployeesListPage.new
employees_page = EmployeesPage.new
commonaction = CommonActionPage.new

Given("I am on Employees page") do
    @employees_name = '....Novo_remover'
end

Given("I click on new employees") do
    employees_list.new_employees.click
    sleep 2
end

When("I fill the employees form") do
    employees_page.name.set @employees_name
    employees_page.gender_masc.set(true)
    employees_page.email.set 'novoemployeesautomacao@mailinator.com'
    employees_page.password.set '123456'
    employees_page.password_confirm.set '123456'
    employees_page.job_role.set 'Analista de Easy'
    sleep 2
    employees_page.first_clinic.click
    sleep 3
end

When("I save the employees") do
    employees_page.save.click
    sleep 3
end

Then("I see the employees saved on employees list") do
    expect(page).to have_content("....Novo_remover")
    expect(page).to have_content("Analista de Easy")
end

Then("I see the employees edit saved on employees list") do
    expect(page).to have_content("....Novo_remover Update")
    expect(page).to have_content("Analista de Easy")
end

Then("I don't see the employees on the list") do
    expect(page).to have_no_content('....Novo_remover')
end

Given("I research employees") do
    employees_list.research.set '....Novo_remover'
    sleep 3
end

Given("I select the first employees to edit") do
    employees_list.edit_first.click
    sleep 2
end

When("I edit the employees form") do
    @employees_name = @employees_name + ' Updated'
    employees_page.name.set @employees_name
    sleep 2
end

When("I click to back on employees list") do
    employees_page.back.click
    sleep 2
end

Given("I select the first employees to delete") do
    employees_list.delete_first.click
    sleep 2
end

Given("I click to confirm delete a employees") do
    commonaction.delete_confirmation2.click
    sleep 2
end