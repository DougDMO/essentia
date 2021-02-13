require_relative 'login_helper'

Before('@login') do
  if ENV["RUNNER"] == 'master'
    visit 'http://master.easy-test/login'
  elsif ENV["RUNNER"] == 'homolog'
    visit 'https://homolog.easy-health.app/login'
  elsif ENV["RUNNER"] == 'prod'
    visit 'https://easy-health.app/login'
  elsif ENV["RUNNER"] == 'develop'
    visit 'http://develop.easy-test/login'
  end

  LoginHelper.new.make_login
end

Before('@login_colab') do
  if ENV["RUNNER"] == 'master'
    visit 'http://master.easy-test/login'
  elsif ENV["RUNNER"] == 'homolog'
    visit 'https://homolog.easy-health.app/login'
  elsif ENV["RUNNER"] == 'prod'
    visit 'https://easy-health.app/login'
  elsif ENV["RUNNER"] == 'develop'
    visit 'https://develop.easy-test.app/login'
  end

  LoginHelper.new.make_login_colab
  end

  Capybara.page.driver.browser.manage.window.maximize