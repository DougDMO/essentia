scheduleconfig = ScheduleConfig.new

When("I Valid all Checkboxs") do
  if scheduleconfig.check_domingo.checked? === false
      raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_segunda.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_terca.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_quarta.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_quinta.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_sexta.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.check_sabado.checked? === false
    raise Exception.new "Checkbox não está marcado."
  end
  if scheduleconfig.alert_daily.checked? === true
    raise Exception.new "Checkbox está marcado."
  end
  if scheduleconfig.alert_patients.checked? === true
    raise Exception.new "Checkbox está marcado."
  end
end

When("I click input default view") do
  scheduleconfig.exibicao_padrao.click
  sleep 2
end

When("I click New Procedure") do
  scheduleconfig.new_procedure.click
  sleep 2
end

When("I click delete New Procedure") do
  scheduleconfig.last_delete.click
  sleep 2
end


When("I fill the Procedure - Schedule Settings form") do
  scheduleconfig.name_procedure.set 'New Procedure'
  scheduleconfig.time_procedure.set '02:00'
  scheduleconfig.color_procedure.click
  scheduleconfig.diagram_color.click
  scheduleconfig.color_b.set '0'
  scheduleconfig.ok_color_procedure.click
  sleep 2
end

When("I fill the schedule Settings form") do
  scheduleconfig.start_hour.set '00:00'
  scheduleconfig.end_hour.set '23:59'
  sleep 2
end

When("I save the Procedure Schedule Configuration") do
  scheduleconfig.save_procedure.click
  sleep 5
end

When("I save the Schedule Configuration") do
  scheduleconfig.save.click
  sleep 3
end