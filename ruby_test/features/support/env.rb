
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'


#vão chamar os arquvos de instancias.
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World Capybara::DSL
World Capybara::RSpecMatchers

World Page
World Helper

BROWSER = ENV['BROWSER']
ACESSO = ENV['ACESSO']




CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{ACESSO}.yml")


## register driver according with browser chosen
case ENV['BROWSER']
when "firefox"
  @driver = :selenium
when "chrome_headless"
  @driver = :selenium_chrome_headless
when "chrome"
  @driver = :selenium_chrome
else
 puts "Browser invalid!"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG['url_default']
  config.default_max_wait_time = 10
end