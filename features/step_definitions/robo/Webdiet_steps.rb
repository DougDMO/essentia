webdiet = WebdietPage.new

Given("I open url {string}") do |url|
  visit url

end

Given("I fill login") do
  webdiet.email.set 'cibelermallmann@gmail.com'
  webdiet.password.set '123456'
end

Given("I set version") do
  webdiet.version3.click
end

Given("I click entrar") do
  webdiet.login_button.click
  sleep 5
end

Given("I click on first patient") do
  webdiet.patient_list.click
  sleep 5
end

Given("I see patient informations") do

  patient = []

  pessoaB = {}
  pessoaB[:nome] = find('#nomeDadosFake')['value']
  pessoaB[:sexo] = find('#generoDadosFake')['value']
  pessoaB[:tel] = find('#telefoneDadosFake')['value']

  pessoaC = {}
  pessoaC[:nome] = "Doug"
  pessoaC[:sexo] = "Masc"
  pessoaC[:tel] = "488888888"

  patient.push(pessoaB)
  patient.push(pessoaC)

  patient.to_json

  fJson = File.open("patient.json","w")
  fJson.write(patient.to_json)
  fJson.close

end
