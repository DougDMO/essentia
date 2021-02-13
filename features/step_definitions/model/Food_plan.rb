menu = MenuPage.new
foodplanlist = FoodPlanListPage.new
foodplanpage = FoodPlanPage.new

Given("I'm on Food Plan page") do
  sleep 3
  menu.menu_model.click
  sleep 1
  menu.menu_food_plan.click
  sleep 1
  @food_plan_title =  'A Food Plan ' + rand(9999).to_s
end

Given("I'm on Food Plan page - recipe") do
  menu.menu_food_plan.click
  sleep 1
  @food_plan_title =  'A Food Plan ' + rand(9999).to_s
end

Given("I fill new Food Plan") do
  foodplanlist.button_new.click
  sleep 2
  foodplanpage.title.set @food_plan_title
  foodplanpage.sub_title.set 'Refeição 1'
  foodplanpage.refeicao.click
  foodplanpage.refeicao_almoco.click
  foodplanpage.search_food.set 'Ovo de codorna'
  foodplanpage.results1_food.click
  foodplanpage.add_observacao.click
  foodplanpage.observacao.set 'Observações sobre a refeição'
  sleep 2
  foodplanpage.observacao.send_keys :page_down
  sleep 5

end

Given("I save the new Food Plan") do
  foodplanpage.button_save.click
  sleep 3
end

Given("I search for the Food Plan created") do
  foodplanlist.search.set 'A Food Plan '
  foodplanlist.search.send_keys :enter
  sleep 2
end

Given("I select the first Food Plan to update") do
  foodplanlist.button_edit.click
  sleep 2
end

Given("I select the first Food Plan to view") do
  foodplanlist.button_view.click
  sleep 8
end

Given("I select the first Food Plan to delete") do
  foodplanlist.button_delete.click
  sleep 2
end

Given("I update the Food Plan") do
  foodplanpage.title.set @food_plan_title + ' Updated'
  foodplanpage.title.send_keys :page_down
  sleep 5
end

Then("I see the Food Plan in list") do
  expect(page).to have_content(@food_plan_title)
end

Then("I see the update Food Plan on the Food list") do
  expect(page).to have_content(@food_plan_title + ' Updated')
end

Then("I don't see the Food Plan in list") do
  expect(page).to have_no_content("A Food Plan ")
end