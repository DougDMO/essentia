menu = MenuPage.new

Given("I select the Schedule menu") do
    menu.menu_schedule.click
end
  
Then("I see the Schedule page") do
    expect(page).to have_content('Agenda')
end

Given("I select the Patients menu") do
  sleep 3
  menu.menu_patient.click
  sleep 3
end
  
Then("I see the Patients page") do
    expect(page).to have_content('Pacientes')
end

Given("I select the Formulas menu") do
    menu.menu_formulas.click
end

Given("I select the Injetaveis menu") do
  menu.menu_injet.click
  sleep 2
end

Given("I select the Estoque menu") do
  menu.menu_estoque.click
end

Given("I select the Recipe menu") do
  menu.menu_recipe.click
end

  Then("I see the Formulas page") do
    expect(page).to have_content('Fórmulas')
end

Given("I select the Models menu") do
    menu.menu_model.click
end
  
When("I select the Anamnese submenu") do
    menu.menu_anamnese.click
end
  
  Then("I see the Anamnese page") do
    expect(page).to have_content('Modelos de Anamnese')
end

Given("I select the Exams Guide submenu") do
    menu.menu_exams_guide.click
end

Then("I see the Exams Guide page") do
    expect(page).to have_content('Modelos de Pedido de Exames')
end

When("I select the Guidance submenu") do
    menu.menu_guidance.click
end
  
Then("I see the Guidance page") do
    expect(page).to have_content('Modelos de Orientações')
end

When("I select the Report submenu") do
    menu.menu_report.click
end
  
  Then("I see the Report page") do
    expect(page).to have_content('Modelos de Laudos')
end

When("I select the Sick Note submenu") do
    menu.menu_sick_note.click
end
  
  Then("I see the Sick Note page") do
    expect(page).to have_content('Modelos de Atestado / Declaração')
end

When("I select the Pre Medical Appointment submenu") do
    menu.menu_pre_app.click
end
  
  Then("I see the Pre Medical Appointment page") do
    expect(page).to have_content('Modelos de Pré-consulta')
end

Given("I select the Clinics menu") do
    menu.menu_clinics.click
end
  
  When("I see the Clinics submenu") do
    menu.menu_clinics_clinics.click
end
  
  Then("I see the Clinics page") do
    expect(page).to have_content('Selecione uma Clínica')
end

When("I select the Employees submenu") do
    menu.menu_clinics_employees.click
end
  
  Then("I see the Employees page") do
    expect(page).to have_content('Profissionais')
end

When("I select the Team submenu") do
    menu.menu_clinics_team.click
end
  
Then("I see the Team page") do
    expect(page).to have_content('Profissionais da Saúde')
end

Given("I select the Setup menu") do
  sleep 2
  menu.menu_setup.click
  sleep 2
  end
  
When("I select the User Settings submenu") do
    menu.menu_setup_user.click
    sleep 1
end
  
Then("I see the User Settings page") do
    expect(page).to have_content('Preferências de Usuário')
end

When("I select the Site Settings submenu") do
    menu.menu_setup_site.click
end
  
Then("I see the Site Settings page") do
    expect(page).to have_content('Configurações de Site')
end

When("I select the Schedule Settings submenu") do
    menu.menu_setup_schedule.click
    sleep 2
end
  
Then("I see the Schedule Settings page") do
    expect(page).to have_content('Configurações de Agenda')
end

When("I select the Attendance Settings submenu") do
    menu.menu_setup_attendance.click
end
  
Then("I see the Attendance Settings page") do
    expect(page).to have_content('Configurações de Atendimento')
end

When("I select the Print Layout submenu") do
    menu.menu_setup_print_layout.click
end
  
Then("I see the Print Layout page") do
    expect(page).to have_content('Layout de Impressão')
end

Given("I select the Help menu") do
  sleep 2
  menu.menu_help.click
  sleep 2
end

Given("I select the Tutorial submenu") do
  menu.menu_help_tutorial.click
  sleep 2
end

Then("I see the Tutorial page") do
  expect(page).to have_content('Menu')
end

Given("I select the Support menu") do
  menu.menu_help_support.click
  sleep 2
end

Then("I see the Support page") do
  expect(page).to have_content('Suporte')
end