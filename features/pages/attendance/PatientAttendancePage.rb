class PatientAttendancePage < SitePrism::Page

  set_url '/patient/attendance/'

  #ações comuns

  element :expandir_menu, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/h3/button'
  element :config_menu, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[10]/button'
  element :config_menu2, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[2]/button'
  element :save_config_menu, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/footer/div/button'
  element :save_config_menu2, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/footer/div/button'
  element :support, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/fab/div/button'
  element :teleconsult, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[1]/div/div/div/span[2]/div/span[1]/button'
  element :excluir, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[1]/div/div/div/span[2]/div/span[2]/button'
  element :preconsul_ant, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[1]/div/div/div/span[2]/div/span[3]/button'
  element :finalize, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[1]/div/div/div/span[2]/div/div[2]/div/span/button'

  element :menu2, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[2]/div/div[1]/div'
  element :menu3, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[3]/div/div[1]/div'
  element :menu4, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[4]/div/div[1]/div'
  element :menu5, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[5]/div/div[1]/div'
  element :menu6, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[6]/div/div[1]/div'
  element :menu7, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[7]/div/div[1]/div'
  element :menu8, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[8]/div/div[1]/div'
  element :menu9, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[9]/div/div[1]/div'

  element :menu22, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[2]/div/div[1]/div'
  element :menu33, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[3]/div/div[1]/div'
  element :menu44, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[4]/div/div[1]/div'
  element :menu55, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[5]/div/div[1]/div'
  element :menu66, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[6]/div/div[1]/div'
  element :menu77, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[7]/div/div[1]/div'
  element :menu88, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[8]/div/div[1]/div'
  element :menu99, :xpath, '/html/body/div[3]/div[2]/div/mat-dialog-container/app-attendance-settings/div/div[2]/div/div/div/div/div/div/div/div[1]/bs-sortable/div/div[9]/div/div[1]/div'

  #menus

  element :menu_consulta, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[1]'
  element :avaliacao_corporal, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[2]'
  element :gasto_energetico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[3]'
  element :pedido_exames, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[4]'
  element :menu_prescricao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[5]'
  element :plano_alimentar, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[6]'
  element :menu_orientacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[7]'
  element :menu_laudo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[8]'
  element :atestado_declaracao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[1]/ul/li[9]'


  class ConsultaSection < SitePrism::Section
  #Consulta Section
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[1]/div/div[2]/div/span[1]/button'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-consulta/div[1]/div[1]/button'
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[1]/div/div[2]/div/span[2]/span/button'
    element :nome_modelo, '#name'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-save-favorite/div/div/div/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[1]/div/div[2]/span/ng-select/div/div/div[2]'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[1]/div/div[2]/span/ng-select/ng-dropdown-panel/div/div[2]/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[1]/editor/div/div[1]/div[2]'
    element :iframe_anamnese, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[1]/editor/div/div[1]/div[2]/div[1]/iframe'
    element :html2, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[2]/div/editor/div/div[1]/div[2]'
    element :iframe_avaliacao, '#text-evaluation_ifr'
    element :text, '#tinymce'
    element :diag_cid, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[3]/mat-form-field/div/div[1]/div/mat-chip-list/div/div/div/input'
    element :first_diag_cid, :xpath, '/html/body/div[5]/div/div/div/mat-option[1]'
    element :edit_first_diag_cid, :xpath, '/html/body/div[3]/div/div/div/mat-option[10]'
    element :exames_file, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div[2]/label/input'
    element :mais_exames_file, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div/div[2]/input'
    element :remover_exames_file, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div/div[1]/div[3]'
  end

  class AvaliacaoCorporalSection < SitePrism::Section

    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[1]/div/button[2]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-body-composition/div[1]/div[1]/button'
    element :descricao, '#description'
    element :altura, '#height'
    element :peso, '#weight'
    element :pesoideal, '#idealWeight'
    element :masc, '#label-gender0'
    element :fem, '#label-gender1'
    element :idade, '#age'
    element :protocolos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[3]/div[1]/esx-form[1]/form/div/div/esx-select/esx-control/div/div/ng-select/div'

    # 3 Pregas : Jackson E Pollock
    element :first_protocolo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[3]/div[1]/esx-form[1]/form/div/div/esx-select/esx-control/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :torax, '#chest'
    element :abdominal, '#abdominal'
    element :coxa, '#thigh'

    #switch Circunferência
    element :circunferencia, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[4]/div[1]/esx-form[1]/form/div[1]/div/esx-checkbox/esx-control/div/div/div[1]/input'
    element :relaxedRightArm, '#relaxedRightArm'
    element :contractedRightArm, '#contractedRightArm'
    element :rightFist, '#rightFist'
    element :relaxedLeftArm, '#relaxedLeftArm'
    element :contractedLeftArm, '#contractedLeftArm'
    element :leftForearm, '#leftForearm'
    element :leftFist, '#leftFist'
    element :neck, '#neck'
    element :shoulder, '#shoulder'
    element :chest, '#chest'
    element :abdomen, '#abdomen'
    element :waist, '#waist'
    element :hip, '#hip'
    element :rightThigh, '#rightThigh'
    element :rightProximalThigh, '#rightProximalThigh'
    element :rightCalf, '#rightCalf'
    element :leftThigh, '#leftThigh'
    element :leftProximalThigh, '#leftProximalThigh'
    element :leftCalf, '#leftCalf'

    #switch Diâmetro ósseo
    element :diametro, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[5]/div[1]/esx-form[1]/form/div[1]/div/esx-checkbox/esx-control/div/div/div[1]/input'
    element :humerus, '#humerus'
    element :fist, '#fist'
    element :femur, '#femur'

    element :comparar_resultados, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[6]/div[1]/div[2]/span[2]/button'
    element :close_comparar_resultados, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-result-compare/div/mat-toolbar/div/div[2]/button'
    element :file_fotos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[1]/div/app-medical-records/div/div/div/div/div[2]/form/div[4]/div/easy-file-upload/div/div[2]/label/input'
    element :remover_file_fotos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[7]/div/div[1]/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-upload/image-upload/div/div/div[1]/div[3]'
    element :file_anexos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[8]/div/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-upload/image-upload/div/div[1]/div[2]/label/input'
    element :remover_file_fotos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[2]/div/esx-body-composition/div/div/div/div/div/div[8]/div/esx-form/form/div/div/esx-upload-form/esx-control/div/esx-upload/image-upload/div/div/div[1]/div[3]'
  end

  class AtestadoDeclaracaoSection < SitePrism::Section
  #Atestado Declaracao Section
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[1]/div/div[2]/div[1]/button[1]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-consulta/div[1]/div[1]/button'
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[1]/div/div[2]/div[1]/button[2]'
    element :nome_modelo, '#name'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-save-favorite/div/div/div/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]'
    element :text, '#tinymce'
    element :iframe_atestado, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[9]/div/app-attestation/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]/div[1]/iframe'
  end

  class PlanoAlimentarSection < SitePrism::Section
    #Plano Alimentar
    element :view, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[1]/button[1]'
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[1]/button[2]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/app-food-plan-history/div[1]/div[1]/button'
    element :salva_modelo_plan, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[1]/button[3]'
    element :titulo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[1]/esx-form/form/div/div/esx-input/esx-control/div/div/div[1]/div/input'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-dialog-form/div/div[2]/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[2]'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :mais, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[1]/div[1]/span[2]/span[2]'
    element :titulo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[1]/div/input'
    element :refeicao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/div/div/div[2]/input'
    element :first_refeicao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :alimento, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[2]/div/div[1]/div/ng-select/div/div/div[2]/input'
    element :first_alimento, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[1]/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]'
    element :add_observacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[3]/div/div/button'
    element :observacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[3]/div[1]/div/textarea'
    element :micro_nutrientes, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[2]/div/div/div[5]/div[3]'
    element :medida, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[2]/div/div[7]/div/ng-select/div/div/div[3]'
    element :first_medida, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[2]/div/div[7]/div/ng-select/ng-dropdown-panel/div[1]'
    element :close_medida, :xpath, '/html/body/div[5]/div[2]/div/mat-dialog-container/set-measure/div/mat-toolbar/div/div[2]/button'

    #Receitas
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[3]/div/div/div/div/div/div[1]/div/div/div[1]/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/nutri-food-plan-builder/div/div/div/div/form/div/div[1]/div[3]/div/div/div/div/div/div[1]/div/div/div[2]/ng-select/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[3]/div/div/div/div/div/div[2]/div[1]/editor/div/div[1]/div[2]/div[1]'
    element :iframe_receita, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-attendance-food-plan/food-planner/div/div/div/div/div/div[1]/div[3]/div/div/div/div/div/div[2]/div[1]/editor/div/div[1]/div[2]/div[1]/iframe'
    element :text, '#tinymce'
    element :data_pedido, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[6]/div/app-exams-guide/div/div/div/div/div[2]/form/div[2]/input'
  end

  class GastoEnergeticoSection < SitePrism::Section
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[1]/button'

    element :altura, '#height'
    element :idade, '#age'
    element :pesoatual, '#weight'
    element :massa_magra, '#massFatFree'
    element :fem, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-basic-information/form/div/div[7]/div/div[1]'
    element :masc, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-basic-information/form/div/div[7]/div/div[2]'
    element :pesoideal, '#idealWeight'
    element :calc_auto, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-basic-information/form/div/div[8]/app-energy-expenditure-ideal-weight/div[1]/small'
    element :perfil_adulto, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-protocol/form/div[1]/div[2]/div/div[1]/label'

    element :protocolo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-protocol/form/div[2]/div/ng-select/div'
    element :nivel_ativ, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-activity-factor/div/div[1]/div/ng-select/div'
    element :sedentario_ativ, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-activity-factor/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]'

    #switch detalhamento atividade física
    element :det_ativ, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-activity-factor/div/div[2]/div/div/div/label'
    element :ativ_fis_met, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-add-met/div/div/form/div/div[1]/ng-select/div/div/div[2]'
    element :first_ativ_fis_met, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-add-met/div/div/form/div/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :duracao, '#duration'
    element :frequencia, '#frequency'

    #switch Fator Injúria
    element :fat_injuria, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-injury-factor/form/div/div[1]/div/div/label'
    element :temperatura, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-injury-factor/form/div/div[2]/div[1]/ng-select/div'
    element :first_temperatura, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-injury-factor/form/div/div[2]/div[1]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :doenca, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-injury-factor/form/div/div[2]/div[2]/ng-select/div'
    element :first_doenca, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-injury-factor/form/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :venta_pesodesejado, '#desiredWeight'
    element :venta_tempodias, '#desiredTime'

    element :objetivo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-bolso/form/div/div[2]/ng-select/div'
    element :first_objetivo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[3]/div/app-energy-expenditure/div/div/div/div/div[2]/div/div/div/app-energy-expenditure-bolso/form/div/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[3]'
  end

  class PedidoExamesSection < SitePrism::Section
    element :mais, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[1]/span[2]/span[2]'
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[2]/div[1]/button[1]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-consulta/div[1]/div[1]/button'
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[2]/div[1]/button[2]'
    element :nome_modelo, '#name'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-save-favorite/div/div/div/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[2]/form/div[1]/div/editor/div/div[1]/div[2]'
    element :iframe_pedido, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[2]/form/div[1]/div/editor/div/div[1]/div[2]/div[1]/iframe'
    element :text, '#tinymce'
    element :data_pedido, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[4]/div/app-exams-guide/div/div/div/div/div[2]/form/div[2]/input'
    element :avanca_mes, :xpath, '/html/body/bs-datepicker-container/div/div/div/div/bs-days-calendar-view/bs-calendar-layout/div[1]/bs-datepicker-navigation-view/button[4]'
    element :select_dia, :xpath, '/html/body/bs-datepicker-container/div/div/div/div/bs-days-calendar-view/bs-calendar-layout/div[2]/table/tbody/tr[3]/td[5]'

  end

  class PrescricaoSection < SitePrism::Section
    element :mais, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[1]/span[2]/span[2]'
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[2]/div[1]/button[1]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-prescription/div[1]/div[1]/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[2]'
    element :search, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[2]/div[3]/button'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[2]/form/div[1]/editor/div/div[1]/div[2]'
    element :iframe_prescricao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[2]/form/div[1]/editor/div/div[1]/div[2]/div[1]/iframe'
    element :text, '#tinymce'
    element :validade_receita, '#revenueValidValue'
    element :tempo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[2]/form/div[2]/div[1]/div[2]/ng-select/div'
    element :tempo_dias, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[2]/form/div[2]/div[1]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div[1]'
    element :add_validade, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[2]/form/div[2]/div[2]/button'

    element :types_prescricao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[1]/span[2]/span[1]/div/div/span'
    element :type_especial, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[5]/div/app-prescription/div/div/div/div/div/div[1]/div/div[1]/span[2]/span[1]/div/div/div/div[2]'

  end

  class OrientacaoSection < SitePrism::Section
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[1]/div/div[2]/div[1]/button[1]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-consulta/div[1]/div[1]/button'
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[1]/div/div[2]/div[1]/button[2]'
    element :nome_modelo, '#name'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-save-favorite/div/div/div/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]'
    element :iframe_orientacao, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[7]/div/app-orientation/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]/div[1]/iframe'
    element :text, '#tinymce'
  end

  class LaudoSection < SitePrism::Section
    element :historico, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[1]/div/div[2]/div[1]/button[1]'
    element :add_historico, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/esx-history/div/div/div/div[2]/esx-history-consulta/div[1]/div[1]/button'
    element :salva_modelo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[1]/div/div[2]/div[1]/button[2]'
    element :nome_modelo, '#name'
    element :salva_novo_modelo, :xpath, '/html/body/div[11]/div[2]/div/mat-dialog-container/app-save-favorite/div/div/div/button'
    element :modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]'
    element :input_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/div/div/div[2]/input'
    element :first_modelos, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[1]/div/div[2]/div[2]/ng-select/ng-dropdown-panel/div/div[2]/div'
    element :html1, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]'
    element :iframe_laudo, :xpath, '/html/body/fuse-root/fuse-main/mat-sidenav-container/mat-sidenav-content/div/div/div/fuse-content/app-attendance-container/div[2]/div[2]/div[2]/ngb-tabset/div/div[8]/div/app-report/div/div/div/div/div[2]/form/div/editor/div/div[1]/div[2]/div[1]/iframe'
    element :text, '#tinymce'
  end

  section :consulta, ConsultaSection, :xpath, '/html'
  section :atestadodeclaracao, AtestadoDeclaracaoSection, :xpath, '/html'
  section :avaliacaocorporal, AvaliacaoCorporalSection, :xpath, '/html'
  section :planoalimentar, PlanoAlimentarSection, :xpath, '/html'
  section :gastoenergetico, GastoEnergeticoSection, :xpath, '/html'
  section :pedidoexames, PedidoExamesSection, :xpath, '/html'
  section :prescricao, PrescricaoSection,:xpath, '/html'
  section :orientacao, OrientacaoSection, :xpath, '/html'
  section :laudo, LaudoSection, :xpath, '/html'

end