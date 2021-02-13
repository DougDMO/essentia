commonaction = CommonActionPage.new


Then("I see the success message {string}") do |string|
    expect(commonaction.success_message.text).to have_text(string, wait: 10)
    sleep 3
end

When("I click to save") do
    commonaction.button_save.click
end

When("I click to continue") do
    commonaction.delete_confirmation.click
    sleep 3
end

When("I click to continue delete") do
    commonaction.delete_confirmation2.click
    sleep 3
end

When("I click to confirm continue") do
    commonaction.confirm_confirmation.click
    sleep 3
end

When("I click to cancel the delete action") do
    commonaction.delete_cancel.click
end

When("I click to duplicate") do
    commonaction.view_duplicate.click
    sleep 3
end

When("I click to edit") do
    commonaction.view_edit.click
end