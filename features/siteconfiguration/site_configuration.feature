@site_configuration @login @all
Feature: Site Configuration CRUD
  As a doctor
  I want to view and edit the site configuration

  Background:
    Given I select a Clinic
    And I select the Setup menu
    And I select the Site Settings submenu

  @edit_site
  Scenario: Edit the site configuration
    Given I fill the Site Configuration
    And I save the Site Configuration
    Then I see the success message "Salvo com sucesso"

  @view_site
  Scenario: View the Site
    Given I click link Site
    Then I see on page "Médico - Exemplo Configurações"
    And I see on page "Ortopedista"
    And I see on page "Descrição geral dos testes automatizados para a tela de configurações do site"
    And I see on page "testesiteconfig@mailinator.com"
    And I see on page "siteconfig"

  @check_site
  Scenario: Check the Site
    Given I click link Site
    And I click link email Site
    And I back to first tab
    And I click link Site
    And I click link Facebook Site
    Then I see page api "facebook.com"

  @send_email_site
  Scenario: Send email from the Site
    Given I click link Site
    And I fill form email Site
    Then I see on page "E-mail enviado com sucesso."

  @back_edit_site
  Scenario: Edit to back the site configuration
    Given I fill back the Site Configuration
    And I save the Site Configuration
    Then I see the success message "Salvo com sucesso"