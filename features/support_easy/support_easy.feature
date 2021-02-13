@support_easy @login @all
Feature: Send Support Email

  @check_links_support
  Scenario: Check Links Support
    Given I select a Clinic
    And I select the Support menu
    And I click link Central Help
    And I see page api "centraldeajuda"
    And I back to first tab
    And I click link Whatsapp
    And I see page api "api.whatsapp"
    And I back to first tab
    And I click link Youtube
    And I see page api "youtube.com/essentia_technologies"

  @check_links_support_colab @login_colab
  Scenario: Check Links Support - Collaborator
    And I select the Support menu
    And I click link Central Help
    And I see page api "centraldeajuda"
    And I back to first tab
    And I click link Whatsapp
    And I see page api "api.whatsapp"
    And I back to first tab
    And I click link Youtube
    And I see page api "youtube.com/essentia_technologies"

  @check_send_support
  Scenario: Check Send Support
    Given I select a Clinic
    And I select the Support menu
    And I fill the Support Form
    And I Send the Support Form
    And I dont see on page "Campo obrigatório"
    And I see on page "E-mail Enviado."

  @check_send_support_colab @login_colab
  Scenario: Check Send Support - Collaborator
    Given I select the Support menu
    And I fill the Support Form
    And I Send the Support Form
    And I dont see on page "Campo obrigatório"
    And I see on page "E-mail Enviado."
