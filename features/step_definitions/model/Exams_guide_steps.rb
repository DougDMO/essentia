menu = MenuPage.new
exams_guide_actions = ExamsGuideActionPage.new
exams_guide_list = ExamsGuideListPage.new

Given("I'm on Exam Guide Model page") do
  sleep 3
  menu.menu_model.click
  sleep 3
  menu.menu_exams_guide.click
  sleep 2
  @exam_guide_title =  'An Exam Guide ' + rand(9999).to_s
end

Given("I fill new Exam Guide model") do
  exams_guide_list.button_new.click
  sleep 2
  exams_guide_actions.title.set @exam_guide_title
  exams_guide_actions.radio_private_no.click
  exams_guide_actions.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    exams_guide_actions.text.set @exam_guide_title  + ': Texto de Descrição do Modelo Guide'
  }
  sleep 3
end

Given("I fill new Exam Guide model Colab") do
  exams_guide_list.button_new.click
  sleep 2
  exams_guide_actions.title.set @exam_guide_title
  #exams_guide_actions.radio_private_no.click
  exams_guide_actions.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    exams_guide_actions.text.set @exam_guide_title  + ': Texto de Descrição do Modelo Guide'
  }
  sleep 3
end

Given("I fill new Exam Guide model - name fix") do
  exams_guide_list.button_new.click
  sleep 3
  exams_guide_actions.title.set 'Nôme fíxo teste'
  exams_guide_actions.radio_private_no.click
  exams_guide_actions.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    exams_guide_actions.text.set 'Nome fixo teste: Texto de Descrição do Modelo Guide'
  }
  sleep 3
end

Given("I fill Doctor in Exam Guide model") do
  exams_guide_actions.input_doctor_create.click
  sleep 2
  exams_guide_actions.first_doctor.click
  sleep 2
end

Given("I select the first exam guide on the list") do
  exams_guide_list.first_exam.click
end

Given("I select the first exam guide to delete") do
  exams_guide_list.first_button_delete.click
end

Given("I select the first exam guide to update") do
  exams_guide_list.first_button_edit.click
  sleep 2
end

Given("I select the first exam guide to view") do
  exams_guide_list.first_button_view.click
  sleep 2
end

Given("I search for the exam guide created") do
  exams_guide_list.search.set 'An Exam Guide'
  exams_guide_list.search.send_keys :enter
  sleep 2
end

Given("I search for the exam guide created - name fix") do
  exams_guide_list.search.set 'Nome fixo teste'
  exams_guide_list.search.send_keys :enter
  sleep 2
end

Given("I select the exam guide to update") do
  exams_guide_list.button_edit.click
  sleep 2
end

When("I save the Exam Guide model") do
  exams_guide_actions.button_save.click
  sleep 2
end

When("I update the Exam Guide model") do
  expect(page).to have_content('Novo Modelo de Pedido de Exames')
  @exam_guide_title = @exam_guide_title + 'Updated'
  exams_guide_actions.title.set @exam_guide_title
  exams_guide_actions.html.click
  sleep 2
  within_frame(find('#text_ifr')) {
    exams_guide_actions.text.set @exam_guide_title  + ': Texto de Descrição Atualizado'
  }
  sleep 3
end

When("I update the Exam Guide model Colab") do
  expect(page).to have_content('Novo Modelo de Pedido de Exames')
  @exam_guide_title = @exam_guide_title + 'Updated'
  exams_guide_actions.title.set @exam_guide_title
  exams_guide_actions.html1.click
  sleep 2
  within_frame(find('#text_ifr')) {
    exams_guide_actions.text.set @exam_guide_title  + ': Texto de Descrição Atualizado'
  }
  sleep 3
end

Then("I see the model on the exam guide list") do
  expect(page).to have_content(@exam_guide_title)
end

Then("I don't see the model on the exam guide list") do
  expect(page).to have_no_content("An Exam Guide")
end
