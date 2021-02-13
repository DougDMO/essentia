menu = MenuPage.new
foodlist = FoodListPage.new
foodpage = FoodPage.new

Given("I'm on Food page") do
  menu.menu_model.click
  sleep 1
  menu.menu_food_plan.click
  sleep 1
  find(:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-food-plan/div/div[1]/div/div[1]/div/div[2]/button').click
  sleep 3
  @food_title =  'A Food ' + rand(9999).to_s
end

Given("I fill new Food") do
  foodlist.button_new.click
  sleep 2
  foodpage.name.set @food_title
  foodpage.medida.click
  foodpage.result1_medida.click
  foodpage.peso_vol.set '0,350'
  foodpage.calorias.set '80000'
  foodpage.grupo.click
  foodpage.result1_grupo.click
  foodpage.carbo.set '25000'
  foodpage.protein.set '3500'
  foodpage.lipids.set '4500'
  foodpage.micro_name.click
  foodpage.result1_micro_name.click
  foodpage.micro_peso_vol.set '500000'
  foodpage.switch_medida_caseira.click
  foodpage.medida_caseira.set '50'
  foodpage.medida_caseira_peso_vol.set '650000'

end

Given("I save the new Food") do
  foodpage.button_save.click
  sleep 2
end

Given("I search for the Food created") do
  foodlist.search.set 'A Food'
  foodlist.search.send_keys :enter
  sleep 2
end

Given("I select the first Food to update") do
  foodlist.button_edit.click
  sleep 2
end

Given("I select the first Food to delete") do
  foodlist.button_delete.click
  sleep 2
end

Given("I update the Food") do
  foodpage.name.set @food_title + ' Updated'
  sleep 2
end

Then("I see the Food in list") do
  expect(page).to have_content(@food_title)
end

Then("I see the update Food on the Food list") do
  expect(page).to have_content(@food_title + ' Updated')
end

Then("I don't see the Food in list") do
  expect(page).to have_no_content("A Food ")
end