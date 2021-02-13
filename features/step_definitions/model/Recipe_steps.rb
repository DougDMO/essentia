menu = MenuPage.new
recipelist = RecipeListPage.new
recipepage = RecipePage.new

Given("I'm on Recipe Model page") do
  menu.menu_model.click
  sleep 1
  menu.menu_recipe.click
  @recipe_title =  'A Recipe ' + rand(9999).to_s
  sleep 2
end

Given("I fill new Recipe Model") do
  recipelist.button_new.click
  sleep 2
  recipepage.title.set @recipe_title
  recipepage.html.click
  sleep 2
  within_frame(recipepage.iframe) {
    recipepage.text.set @recipe_title + ': Texto de Descrição do Modelo'
  }
  recipepage.food_plan.click
  sleep 2
  recipepage.food_plan_search.set 'A Food Plan'
  sleep 2
  recipepage.food_plan_add.click
  sleep 2
end

Given("I save the new Recipe Model") do
  recipepage.button_save.click
  sleep 2
end

Given("I search for the Recipe created") do
  recipelist.search.set 'A Recipe'
  recipelist.search.send_keys :enter
  sleep 2
end

Given("I select the first Recipe model to update") do
  recipelist.button_edit.click
  sleep 2
end

Given("I select the first Recipe model to delete") do
  recipelist.button_delete.click
  sleep 2
end

Given("I select the first Recipe model to view") do
  recipelist.button_view.click
  sleep 2
end

Given("I click to duplicate Recipe Model") do
  recipelist.button_view_duplicate.click
  sleep 2
end

Given("I update the Recipe model") do
  recipepage.title.set @recipe_title + ' Updated'
  recipepage.html.click
  sleep 2
  within_frame(recipepage.iframe) {
    recipepage.text.set @recipe_title + ': Texto de Descrição Atualizado'
  }
  sleep 2
end

Then("I see the model on the Recipe list") do
  expect(page).to have_content(@recipe_title)
end

Then("I see the update model on the Recipe list") do
  expect(page).to have_content(@recipe_title + ' Updated')
end

Then("I don't see the model on the Recipe list") do
  expect(page).to have_no_content("A Recipe ")
end