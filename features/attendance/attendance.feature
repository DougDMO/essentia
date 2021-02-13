@attendance @login @all
Feature: Attendance
  As a doctor
  I want to start and finish a attendance

  Background:
    Given I select a Clinic
    And I select the Patients menu

  @new_patient @smoke_test
  Scenario: Create a New Patient
    Given I am on Patient page
    When I click on new patient
    And I fill the patient form
    And I save the patient
    Then I see the patient saved on patient list

  @check_menus_attendance @smoke_test
  Scenario: Check menus attendance
    Given I click to start a attendance from patient list
    When I click edit menus
    And I check all menus
    And I save edit menus
    Then I see the success message "Configurações de atendimento atualizadas"
    And I dont see all menus uncheck
    When I click edit menus after
    And I uncheck all menus
    And I save edit menus after
    Then I see the success message "Configurações de atendimento atualizadas"
    And I see all menus uncheck

  @attendance_upload_file
  Scenario: Start and Finalize a Attendance with upload file
    Given I click to start a attendance from patient list
    And I click the section Consulta
    When I fill the section Consulta
    And I upload file "easyhealth.txt" on consulta
    Then I see the success message "Arquivos do tipo text/plain não são suportados"
    When I upload file "easyhealth.exe" on consulta
    Then I see the success message "Arquivos do tipo application/x-msdownload não são suportados"
    When I upload file "imagem_grande.jpg" on consulta
    Then I see the success message "O arquivo imagem_grande.jpg não pôde ser enviado, pois ultrapassa o limite de 6 MB"
    When I upload file "easyhealth.pdf" on consulta
    When I click the section Avaliação Corporal
    And I fill the section Avaliação Corporal
    And I upload file "paciente.jpg" on avaliação corporal
    And I click on finalize attendance
    Then I see on page "Anexos"

  @new_attendance_finalize @smoke_test
  Scenario: Start and Finalize a Attendance
    Given I click to start a attendance from patient list
    And I click the section Consulta
    When I fill the section Consulta
    And I click the section Avaliação Corporal
    And I fill the section Avaliação Corporal
    And I click the section Atestado
    And I fill the section Atestado
    And I click the section Plano Alimentar
    And I fill the section Plano Alimentar
    And I click the section Gasto Energético
    And I fill the section Gasto Energético
    And I click the section Pedido de Exames
    And I fill the section Pedido de Exames - actual date
    And I click the section Prescrição
    And I fill the section Prescrição
    And I click the section Orientação
    And I fill the section Orientação
    And I click the section Laudo
    And I fill the section Laudo
    And I click on finalize attendance
    And I click on save attendance
    Then I see on page "Dados Básicos"
    And I see on page actual date

  @share_attendance
  Scenario: Share a Attendance with other Doctor
    Given I click on attendances from patient list
    And I click on share attendance
    And I check share attendance
    And I select Doctor for share
    When I save share
    Then I see the success message "Salvo com sucesso"

  @check_share_attendance
  Scenario: Check share a Attendance with other Doctor
    And I'm not logged in - Clinics Page
    And I go to the login page
    And I acess with invited Doctor
    And I select a Invited Clinic
    When I select the Patients menu
    And I click on attendances from patient list
    Then I see on page "Texto da Anamnese de um Atendimento"
    And I see on page "Descrição da Avaliação Corporal do Atendimento"

  @duplicate_attendance
  Scenario: Duplicate a attendance
    Given I am on Patient page
    When I click on attendances from patient list
    And I click duplicate a attendance
    And I click on finalize attendance
    And I click on save attendance
    When I click expand second attendance
    Then I see on page "Texto de Pedido de Exames de um Atendimento"
    And I dont see on page "invalid date"

  @new_attendance_not_finalized
  Scenario: Start and NOT Finalize a Attendance
    Given I click to start a attendance from patient list
    And I click the section Consulta
    When I fill the section Consulta
    And I click the section Prescrição
    And I click the section Orientação
    And I fill the section Orientação
    Then I select the Patients menu


  @check_medical_records
  Scenario: Start and Finalize a Attendance
    Given I click to start a attendance from patient list
    And I click the section Consulta
    When I fill the section Consulta
    And I click the section Avaliação Corporal
    And I fill the section Avaliação Corporal
    And I click the section Atestado
    And I fill the section Atestado
    And I click the section Plano Alimentar
    And I fill the section Plano Alimentar
    And I click the section Gasto Energético
    And I fill the section Gasto Energético
    And I click the section Pedido de Exames
    And I fill the section Pedido de Exames - past date
    And I click the section Prescrição
    And I fill the section Prescrição
    And I click the section Orientação
    And I fill the section Orientação
    And I click the section Laudo
    And I fill the section Laudo
    And I click on finalize attendance
    And I click on save attendance
    And I not search a attendance
    Then I see on page "Texto da Anamnese de um Atendimento"
    And I see on page "Texto da Avaliação e Plano de um Atendimento"
    And I see on page "Descrição da Avaliação Corporal do Atendimento"
    And I see on page "28 anos"
    And I see on page "3 pregas: Jackson e Pollock"
    And I see on page "Gasto Energético"
    And I see on page "Texto de Pedido de Exames de um Atendimento"
    And I see on page "Texto da Prescrição de um Atendimento"
    And I see on page "Esta receita tem a validade de 5 dia(s)."
    And I see on page "Plano Alimentar - Atendimento"
    And I see on page "Ovo De Codorna"
    And I see on page "Texto da Receita de um Atendimento"
    And I see on page "Texto de Orientação de um Atendimento"
    And I see on page "Texto do Laudo de um Atendimento"
    And I see on page "Texto de Atestado de um Atendimento"
    And I see on page "Dr Cibele Mallmann Médico "

  @delete_attendance
  Scenario: Delete a attendance
    Given I am on Patient page
    When I click on attendances from patient list
    And I search a attendance
    And I click delete a attendance
    And I click to continue
    Then I see on page "Excluído com sucesso"
    When I close search a attendance
    And I click delete  a attendance - out search
    And I click to continue
    Then I see on page "Excluído com sucesso"

  @delete_patient  @smoke_test
  Scenario: Delete a Patient
    Given I select the first patient to edit
    When I click on delete the patient profile
    And I confirm to delete the patient
    Then I don't see the patient on the list