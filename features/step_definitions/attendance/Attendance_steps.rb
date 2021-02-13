attendance = PatientAttendancePage.new
pendingattendace = PendingAttendace.new
finalizeattendance = FinalizeAttendance.new
attendancelistpage = AttendanceListPage.new

Given("I click edit menus") do
  attendance.config_menu.click
  sleep 7
end

Given("I click edit menus after") do
  attendance.config_menu2.click
  sleep 7
end

Given("I check all menus") do
  attendance.menu2.click
  attendance.menu3.click
  attendance.menu4.click
  attendance.menu5.click
  attendance.menu6.click
  attendance.menu7.click
  attendance.menu8.click
  attendance.menu9.click
  sleep 2
end

Given("I uncheck all menus") do
  attendance.menu22.click
  attendance.menu33.click
  attendance.menu44.click
  attendance.menu55.click
  attendance.menu66.click
  attendance.menu77.click
  attendance.menu88.click
  attendance.menu99.click
  sleep 2
end

Given("I save edit menus") do
  attendance.save_config_menu.click
  sleep 3
end

Given("I save edit menus after") do
  attendance.save_config_menu2.click
  sleep 3
end

Given("I dont see all menus uncheck") do
  expect(page).to have_no_content('Avaliação Corporal')
  expect(page).to have_no_content('Gasto Energético')
  expect(page).to have_no_content('Pedido de Exames')
  expect(page).to have_no_content('Prescrição')
  expect(page).to have_no_content('Plano Alimentar')
  expect(page).to have_no_content('Orientação')
  expect(page).to have_no_content('Laudo')
  expect(page).to have_no_content('Atestado / Declaração')
end

Given("I see all menus uncheck") do
  expect(page).to have_content('Avaliação Corporal')
  expect(page).to have_content('Gasto Energético')
  expect(page).to have_content('Pedido de Exames')
  expect(page).to have_content('Prescrição')
  expect(page).to have_content('Plano Alimentar')
  expect(page).to have_content('Orientação')
  expect(page).to have_content('Laudo')
  expect(page).to have_content('Atestado / Declaração')
end

Given("I click the section Consulta") do
  attendance.menu_consulta.click
  sleep 7
end

Given("I save model Consulta") do
  attendance.consulta.salva_modelo.click
  sleep 3
  attendance.consulta.nome_modelo.set 'An Anamnese attendance'
  sleep 2
  attendance.consulta.salva_novo_modelo.click
  sleep 2
end

Given("I click the historic Consulta") do
  attendance.consulta.historico.click
  sleep 3
end

Given("I select models Consulta") do
  attendance.consulta.modelos.click
  sleep 2
  attendance.consulta.first_modelos.click
  sleep 7
end

Given("I click add Consulta by historic") do
  attendance.consulta.add_historico.click
  sleep 3
end

Given("I fill the section Consulta") do
  attendance.consulta.html1.click
  sleep 1
  within_frame(attendance.consulta.iframe_anamnese) {
    attendance.consulta.text.set 'Texto da Anamnese de um Atendimento'
  }
  attendance.consulta.html2.click
  sleep 1
  within_frame(attendance.consulta.iframe_avaliacao) {
    attendance.consulta.text.set 'Texto da Avaliação e Plano de um Atendimento'
  }
  attendance.consulta.diag_cid.set 'tifóide e paratifóide'
  sleep 3
  attendance.consulta.first_diag_cid.click
  sleep 5
end

Given("I fill clear the section Consulta") do
  attendance.consulta.html1.click
  sleep 1
  within_frame(attendance.consulta.iframe_anamnese) {
    attendance.consulta.text.set '    '
  }
  attendance.consulta.html2.click
  sleep 1
  within_frame(attendance.consulta.iframe_avaliacao) {
    attendance.consulta.text.set '   '
  }
  sleep 5
end

Given("I fill edit section Consulta") do
  attendance.consulta.html1.click
  sleep 1
  within_frame(attendance.consulta.iframe_anamnese) {
    attendance.consulta.text.set 'Texto da Anamnese de um Atendimento editado após histórico'
  }
  sleep 1
end

Given("I upload file {string} on consulta") do |string|
  (page.find(:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div/div[2]/label/input', :visible => :all)).attach_file(string)
  sleep 2
end

Given("I upload multiples files on consulta - bigger 6mb") do
  (page.find(:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div/div[2]/label/input', :visible => :all)).attach_file["easyhealth.pdf","imagem_grande.jpg"]
  sleep 2
end

Given("I upload file {string} on avaliação corporal") do |string|
  (page.find(:xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[7]/div/div[1]/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-upload/image-upload/div/div[1]/div[2]/label/input', :visible => :all)).attach_file(string)
  sleep 7
end

Given("I click the section Avaliação Corporal") do
  attendance.avaliacao_corporal.click
  sleep 5
end

Given("I click the historic Avaliação Corporal") do
  attendance.avaliacaocorporal.historico.click
  sleep 3
end

Given("I click add Avaliação Corporal by historic") do
  attendance.avaliacaocorporal.add_historico.click
  sleep 3
end

Given("I fill the section Avaliação Corporal") do
  attendance.avaliacaocorporal.descricao.set 'Descrição da Avaliação Corporal do Atendimento'
  attendance.avaliacaocorporal.altura.set '177'
  attendance.avaliacaocorporal.peso.set '8000'
  attendance.avaliacaocorporal.masc.click
  attendance.avaliacaocorporal.idade.set '28'
  attendance.avaliacaocorporal.protocolos.click
  sleep 2
  expect(page).to have_content("3 pregas: Jackson e Pollock")
  expect(page).to have_content("3 pregas: Guedes")
  expect(page).to have_content("4 pregas: Durin e Womersley")
  attendance.avaliacaocorporal.first_protocolo.click
  sleep 2
  attendance.avaliacaocorporal.torax.set '1500'
  attendance.avaliacaocorporal.abdominal.set '2500'
  attendance.avaliacaocorporal.coxa.set '800'
  sleep 5
end

Given("I compare previous results Avaliação Corporal") do
  sleep 3
  attendance.avaliacaocorporal.comparar_resultados.click
  sleep 3
  expect(page).to have_content("Tabela Comparativa")
  expect(page).to have_content("Parâmetro")
  expect(page).to have_content("Massa Magra")
  attendance.avaliacaocorporal.close_comparar_resultados.click
  sleep 3
end

Given("I fill edit section Avaliação Corporal") do
  attendance.avaliacaocorporal.descricao.set 'Descrição da Avaliação Corporal do Atendimento'
  attendance.avaliacaocorporal.altura.set '177'
  attendance.avaliacaocorporal.peso.set '8000'
  sleep 5
end


Given("I click the section Atestado") do
  attendance.atestado_declaracao.click
  sleep 5
end

Given("I click the historic Atestado") do
  attendance.atestadodeclaracao.historico.click
  sleep 3
end

Given("I click add Atestado by historic") do
  attendance.atestadodeclaracao.add_historico.click
  sleep 3
end

Given("I select models Atestado") do
  attendance.atestadodeclaracao.modelos.click
  sleep 2
  attendance.atestadodeclaracao.input_modelos.set 'A Sick Note attendance'
  sleep 2
  attendance.atestadodeclaracao.first_modelos.click
  sleep 7
end

Given("I save model Atestado") do
  attendance.atestadodeclaracao.salva_modelo.click
  sleep 3
  attendance.atestadodeclaracao.nome_modelo.set 'A Sick Note attendance'
  sleep 2
  attendance.atestadodeclaracao.salva_novo_modelo.click
  sleep 2
end

Given("I fill the section Atestado") do
  attendance.atestadodeclaracao.html1.click
  sleep 1
  within_frame(attendance.atestadodeclaracao.iframe_atestado) {
    attendance.atestadodeclaracao.text.set 'Texto de Atestado de um Atendimento'
  }
  sleep 5
end

Given("I fill clear the section Atestado") do
  attendance.atestadodeclaracao.html1.click
  sleep 1
  within_frame(attendance.atestadodeclaracao.iframe_atestado) {
    attendance.atestadodeclaracao.text.set '    '
  }
  sleep 5
end

Given("I click the section Plano Alimentar") do
  attendance.plano_alimentar.click
  sleep 5
end

Given("I click the historic Plano Alimentar") do
  attendance.planoalimentar.historico.click
  sleep 3
end

Given("I click add Plano Alimentar by historic") do
  attendance.planoalimentar.add_historico.click
  sleep 3
end

Given("I save model Plano Alimentar") do
  attendance.planoalimentar.salva_modelo_plan.click
  sleep 3
  attendance.planoalimentar.titulo_modelo.set 'A Food Plan attendance'
  sleep 2
  attendance.planoalimentar.salva_novo_modelo.click
  sleep 2
end

Given("I select models Plano Alimentar") do
  attendance.planoalimentar.modelos.click
  sleep 2
  attendance.planoalimentar.input_modelos.set 'A Food Plan'
  sleep 2
  attendance.planoalimentar.first_modelos.click
  sleep 7
end

Given("I fill the section Plano Alimentar") do
  attendance.planoalimentar.titulo.set 'Plano Alimentar - Atendimento'
  attendance.planoalimentar.refeicao.click
  attendance.planoalimentar.first_refeicao.click
  attendance.planoalimentar.alimento.set 'Ovo de codorna'
  sleep 3
  attendance.planoalimentar.first_alimento.click
  attendance.planoalimentar.add_observacao.click
  attendance.planoalimentar.observacao.set 'Observações sobre a refeição'
  sleep 3
  attendance.planoalimentar.medida.click
  sleep 2
  attendance.planoalimentar.first_medida.click
  sleep 2
  expect(page).to have_content("Grama")
  expect(page).to have_content("Medida base")
  expect(page).to have_content("Medidas Caseiras")
  expect(page).to have_content("unidade")
  attendance.planoalimentar.close_medida.click
  sleep 2
  expect(page).to have_content("Grama")
  expect(page).to have_content("Referência")
  attendance.planoalimentar.micro_nutrientes.click
  expect(page).to have_content("Micronutrientes e outros do Dia")
  expect(page).to have_content("Vitamina D")
  expect(page).to have_content("Ferro")
  attendance.planoalimentar.micro_nutrientes.click
  attendance.planoalimentar.titulo.send_keys :page_down
  sleep 2
  attendance.planoalimentar.html1.click
  sleep 1
  within_frame(attendance.planoalimentar.iframe_receita) {
    attendance.planoalimentar.text.set 'Texto da Receita de um Atendimento'
  }
  sleep 5
end

Given("I click the section Gasto Energético") do
  attendance.gasto_energetico.click
  sleep 5
end


Given("I fill the section Gasto Energético") do
  attendance.gastoenergetico.altura.set '177'
  attendance.gastoenergetico.idade.set '28'
  attendance.gastoenergetico.pesoatual.set '8000'
  attendance.gastoenergetico.massa_magra.set '2500'
  attendance.gastoenergetico.masc.click
  attendance.gastoenergetico.pesoideal.set '8500'
  attendance.gastoenergetico.calc_auto.click
  attendance.gastoenergetico.perfil_adulto.click
  attendance.gastoenergetico.nivel_ativ.click
  sleep 2
  attendance.gastoenergetico.sedentario_ativ.click
  attendance.gastoenergetico.altura.send_keys :page_down
  sleep 2
  attendance.gastoenergetico.det_ativ.click
  sleep 2
  attendance.gastoenergetico.ativ_fis_met.click
  sleep 2
  attendance.gastoenergetico.first_ativ_fis_met.click
  attendance.gastoenergetico.duracao.set '55'
  attendance.gastoenergetico.frequencia.set '4'
  attendance.gastoenergetico.fat_injuria.click
  sleep 2
  attendance.gastoenergetico.temperatura.click
  sleep 2
  attendance.gastoenergetico.first_temperatura.click
  attendance.gastoenergetico.doenca.click
  sleep 2
  attendance.gastoenergetico.first_doenca.click
  attendance.gastoenergetico.venta_pesodesejado.set '7500'
  attendance.gastoenergetico.venta_tempodias.set '60'
  attendance.gastoenergetico.objetivo.click
  sleep 2
  attendance.gastoenergetico.first_objetivo.click
  sleep 5
end

Given("I click the historic exams") do
  attendance.pedidoexames.historico.click
  sleep 3
end

Given("I click add prescrição by historic") do
  attendance.prescricao.add_historico.click
  sleep 3
end

Given("I select models prescrição") do
  attendance.prescricao.modelos.click
  sleep 2
  attendance.prescricao.input_modelos.set 'The Formulas'
  sleep 2
  attendance.prescricao.first_modelos.click
  sleep 7
end

Given("I click add exams by historic") do
  attendance.pedidoexames.add_historico.click
  sleep 3
end

Given("I click the section Pedido de Exames") do
  attendance.pedido_exames.click
  sleep 5
end

Given("I save model Pedido de Exames") do
  attendance.pedidoexames.salva_modelo.click
  sleep 3
  attendance.pedidoexames.nome_modelo.set 'An Exam Guide attendance'
  sleep 2
  attendance.pedidoexames.salva_novo_modelo.click
  sleep 2
end

Given("I select models Pedido de Exames") do
  attendance.pedidoexames.modelos.click
  sleep 2
  attendance.pedidoexames.input_modelos.set 'An Exam Guide attendance'
  sleep 2
  attendance.pedidoexames.first_modelos.click
  sleep 7
end

Given("I fill the section Pedido de Exames - actual date") do
  attendance.pedidoexames.html1.click
  sleep 1
  within_frame(attendance.pedidoexames.iframe_pedido) {
    attendance.pedidoexames.text.set 'Texto de Pedido de Exames de um Atendimento'
  }
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  sleep 1
  attendance.pedidoexames.data_pedido.set @dataatual
  sleep 2
end

Given("I fill the section Pedido de Exames - future date") do
  attendance.pedidoexames.html1.click
  sleep 1
  within_frame(attendance.pedidoexames.iframe_pedido) {
    attendance.pedidoexames.text.set 'Texto de Pedido de Exames de um Atendimento'
  }
  @dataatual = Date.today +1
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  sleep 1
  attendance.pedidoexames.data_pedido.set @dataatual
  sleep 2
end

Given("I fill the section Pedido de Exames - past date") do
  attendance.pedidoexames.html1.click
  sleep 1
  within_frame(attendance.pedidoexames.iframe_pedido) {
    attendance.pedidoexames.text.set 'Texto de Pedido de Exames de um Atendimento'
  }
  @dataatual = Date.today +1
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  sleep 1
  attendance.pedidoexames.data_pedido.set @dataatual
  sleep 2
end

Given("I fill edit section Pedido de Exames") do
  attendance.pedidoexames.html1.click
  sleep 1
  within_frame(attendance.pedidoexames.iframe_pedido) {
    attendance.pedidoexames.text.set 'Texto de Pedido de Exames de um Atendimento editado após histórico'
  }
  sleep 1
end

Given("I click the historic Prescrição") do
  attendance.prescricao.historico.click
  sleep 3
end

Given("I click the section Prescrição") do
  attendance.menu_prescricao.click
  sleep 5
end

Given("I change type Prescrição") do
  attendance.prescricao.types_prescricao.click
  attendance.prescricao.types_prescricao.click
  sleep 2
  attendance.prescricao.type_especial.click
  sleep 3
end

Given("I fill the section Prescrição") do
  attendance.prescricao.html1.click
  sleep 1
  within_frame(attendance.prescricao.iframe_prescricao) {
    attendance.prescricao.text.set 'Texto da Prescrição de um Atendimento'
  }
  sleep 1
  attendance.prescricao.validade_receita.set '5'
  attendance.prescricao.tempo.click
  attendance.prescricao.tempo_dias.click
  attendance.prescricao.add_validade.click
  sleep 5
end

Given("I fill edit section Prescrição") do
  attendance.prescricao.html1.click
  sleep 1
  within_frame(attendance.prescricao.iframe_prescricao) {
    attendance.prescricao.text.set 'Texto da Prescrição de um Atendimento editado após histórico'
  }
  sleep 1
end

Given("I click the section Orientação") do
  attendance.menu_orientacao.click
  sleep 3
end

Given("I click the historic Orientação") do
  attendance.orientacao.historico.click
  sleep 3
end

Given("I click add Orientação by historic") do
  attendance.orientacao.add_historico.click
  sleep 3
end

Given("I save model Orientação") do
  attendance.orientacao.salva_modelo.click
  sleep 3
  attendance.orientacao.nome_modelo.set 'A Guidance attendance'
  sleep 2
  attendance.orientacao.salva_novo_modelo.click
  sleep 2
end

Given("I select models Orientação") do
  attendance.orientacao.modelos.click
  sleep 2
  attendance.orientacao.input_modelos.set 'A Guidance attendance'
  sleep 2
  attendance.orientacao.first_modelos.click
  sleep 7
end

Given("I fill the section Orientação") do
  attendance.orientacao.html1.click
  sleep 1
  within_frame(attendance.orientacao.iframe_orientacao) {
    attendance.orientacao.text.set 'Texto de Orientação de um Atendimento'
  }
  sleep 5
end

Given("I click the section Laudo") do
  attendance.menu_laudo.click
  sleep 3
end

Given("I click the historic Laudo") do
  attendance.laudo.historico.click
  sleep 3
end

Given("I click add Laudo by historic") do
  attendance.laudo.add_historico.click
  sleep 3
end

Given("I select models Laudo") do
  attendance.laudo.modelos.click
  sleep 2
  attendance.laudo.input_modelos.set 'A Report attendance'
  sleep 2
  attendance.laudo.first_modelos.click
  sleep 7
end

Given("I save model Laudo") do
  attendance.laudo.salva_modelo.click
  sleep 3
  attendance.laudo.nome_modelo.set 'A Report attendance'
  sleep 2
  attendance.laudo.salva_novo_modelo.click
  sleep 2
end

Given("I fill the section Laudo") do
  attendance.laudo.html1.click
  sleep 1
  within_frame(attendance.laudo.iframe_laudo) {
    attendance.laudo.text.set 'Texto do Laudo de um Atendimento'
  }
  sleep 5
end

Given("I fill {string} on email patient") do |string|
  sleep 2
  finalizeattendance.email.set string
  sleep 2
end

Given("I fill {string} on copy email prescricao") do |string|
  finalizeattendance.copy_prescricao.click
  sleep 2
  finalizeattendance.copy_email_prescricao.set string
  sleep 2
  finalizeattendance.copy_email_prescricao.send_keys :enter
  sleep 2
end

Given("I click on finalize attendance") do
  attendance.finalize.click
  sleep 20
end

Given("I click on finalize attendance clear") do
  attendance.finalize.click
  sleep 1
end

Given("I click on save attendance") do
  finalizeattendance.save.click
  #/html/body/ngb-modal-window/div/div/app-finish-attendance/div/div[1]/button
  sleep 15
end

Given("I see on page actual date") do
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  expect(page).to have_content(@dataatual)
end

Given("I see on page past date") do
  @dataatual = Date.today -1
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  expect(page).to have_content(@dataatual)
end

Given("I see on page future date") do
  @dataatual = Date.today +1
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  expect(page).to have_content(@dataatual)
end

Given("I click view all PDFs") do
  sleep 5
  finalizeattendance.print_all.click
  sleep 10
  switch_to_window(windows.last)
  sleep 2
end

When("I back to first windows") do
  switch_to_window(windows.first)
  sleep 5
end

Then("I see the attendance not finalized is {string}") do |string|
  expect(pendingattendace.numero_pendente).to have_text(string)
end

Given("I click on pending attendance") do
  pendingattendace.patient_pending.click
  sleep 10
end

Given("I click on expand pending attendance") do
  pendingattendace.expandir.click
  sleep 3
end

Given("I delete pending attendance") do
  pendingattendace.excluir.click
  sleep 2
  pendingattendace.confirma_delete.click
  sleep 3
end

Given("I click on resume attendance") do
  pendingattendace.retomar.click
  sleep 10
end

Given("I click remove by resume attendance") do
  attendance.excluir.click
  sleep 3
end

Given("I refresh page") do
  page.driver.browser.navigate.refresh
  sleep 5
end

Given("I search a attendance") do
  @dataatual = Date.today
  @dataatual = @dataatual.strftime("%d/%m/%Y")
  attendancelistpage.search.set @dataatual
  sleep 3
end

Given("I not search a attendance") do
  attendancelistpage.search.set "nenhum dado deve ser encontrado"
  sleep 3
  attendancelistpage.close_search.click
  sleep 3
end

Given("I close search a attendance") do
  attendancelistpage.close_search.click
  sleep 3
end

Given("I click delete a attendance") do
  attendancelistpage.delete.click
  sleep 5
end

Given("I click delete  a attendance - out search") do
  attendancelistpage.delete2.click
  sleep 5
end

Given("I click duplicate a attendance") do
  attendancelistpage.replicar.click
  sleep 7
end

Given("I generate Exames pdf") do
  attendancelistpage.pdf_exames.click
  sleep 7
end

Given("I generate Prescrição pdf") do
  attendancelistpage.pdf_prescricao.click
  sleep 7
end

Given("I generate Plano Alimentar pdf") do
  attendancelistpage.pdf_plano.click
  sleep 7
end

Given("I generate Orientação pdf") do
  attendancelistpage.pdf_orientacao.click
  sleep 7
end

Given("I generate Laudo pdf") do
  attendancelistpage.pdf_laudo.click
  sleep 7
end

Given("I generate Atestado pdf") do
  attendancelistpage.pdf_atestado.click
  sleep 7
end

Given("I send email Exames pdf") do
  attendancelistpage.email_pdf_exames.click
  sleep 3
end

Given("I send email Prescrição pdf") do
  attendancelistpage.email_pdf_prescricao.click
  sleep 3
end

Given("I send email Plano Alimentar pdf") do
  attendancelistpage.email_pdf_plano.click
  sleep 3
end

Given("I send email Orientação pdf") do
  attendancelistpage.email_pdf_orientacao.click
  sleep 3
end

Given("I send email Laudo pdf") do
  attendancelistpage.email_pdf_laudo.click
  sleep 3
end

Given("I send email Atestado pdf") do
  attendancelistpage.email_pdf_atestado.click
  sleep 3
end

Given("I fill and send email attendance pdf") do
  expect(page).to have_css('button[class="close"]')
  attendancelistpage.observacao_attendance.set 'Observação PDF'
  sleep 2
  attendancelistpage.send_email_attendance.click
  sleep 15
end

Then("I check pdf {string} on email attendance") do |string|
  new_window = open_new_window
  switch_to_window new_window
  visit 'https://mailinator.com'
  sleep 3
  find('#addOverlay').set 'testepaciente'
  find('#addOverlay').send_keys :enter
  sleep 2
  find(:xpath, '/html/body/div[2]/div/div[3]/div/div[8]/div/div/div/table/tbody/tr[1]/td[4]/a').click
  sleep 2
  within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[9]/div/div/div[3]/iframe')) {
    expect(page).to have_content(string)
    expect(page).to have_content("Observação PDF")
  }
  sleep 3
end

Then("I check {string} on email attendance") do |string|
  new_window = open_new_window
  switch_to_window new_window
  visit 'https://mailinator.com'
  sleep 3
  find('#addOverlay').set 'testepaciente'
  find('#addOverlay').send_keys :enter
  sleep 2
  find(:xpath, '/html/body/div[2]/div/div[3]/div/div[8]/div/div/div/table/tbody/tr[1]/td[4]/a').click
  sleep 2
  within_frame(find(:xpath, '/html/body/div[2]/div/div[3]/div/div[9]/div/div/div[3]/iframe')) {
    expect(page).to have_content(string)
  }
  sleep 3
end

Given("I click expand second attendance") do
  sleep 3
  attendancelistpage.expandir2.click
  sleep 3
end