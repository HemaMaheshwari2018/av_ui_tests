require 'selenium/webdriver'
require 'capybara/rspec'
require 'faker'
require 'nokogiri'
require 'open-uri'
require 'require_all'
require 'site_prism'
require 'rspec/retry'
require 'capybara'
require 'sauce_whisk'
require_all './spec/helpers'
require_all './page_object'
require 'rspec'
require 'json'
require 'bundler/setup'



Capybara.default_max_wait_time = 10
Capybara.default_max_wait_time = 5
Capybara.app_host = "https://#{ENV['APP_HOST']}"
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :remote_browser
Capybara.default_selector = :xpath



RSpec.configure do |config|
  puts '****** I am called rspec config*******'
  config.include Capybara::DSL
  config.include Helpers
  config.include Gist
  config.include Capybara::RSpecMatchers
  config.color = true
  config.tty = true
  config.default_formatter = 'doc'

config.before :each do |scenario|
  Capybara.reset_sessions!
  Capybara.default_selector = :xpath
  BROWSERS = ['firefox', 'chrome'].freeze
  Capybara.configure do |config|

  puts '****** I am called capybara config*******'
  config.default_max_wait_time = 5
  config.app_host = "https://gist.github.com"
  config.run_server = false
  #config.default_driver = :remote_browser
  config.javascript_driver = :remote_browser
  puts '*******this is when i call testrunner******'



  #if ENV['SAUCE_USERNAME']
  # BROWSERS.each do |browser|
  #   puts "\n\n############################"
  #   puts "Starting #{browser.capitalize} test run..."
  #   puts ENV['HUB_HOST']
  #   puts ENV['BROWSER']
  #   puts "############################\n\n"
  #   #Selenium::WebDriver::Remote::Capabilities.send(browser.to_sym)
  #
  # capabilities = {:browserName=>browser.to_s, :name => scenario.full_description, :extendedDebugging => "true", 'chromeOptions': {
  #     'args': ['--disable-web-security', '--user-data-dir=~/.e2e-chrome-profile']}}
  # config.register_driver :remote_browser do |app|
  #   puts '****** I am called testunner*******'
  #   Capybara::Selenium::Driver.new(
  #       app, :browser => :remote,
  #       #url: "http://#{ENV['HUB_HOST']}/wd/hub",
  #       url: "https://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:443/wd/hub",
  #       desired_capabilities: capabilities
  #
  #   )
  #   end
  # end
  #
#     Capybara.register_driver :selenium do |app|
#       capabilities = {:browserName=>ENV['browserName'],
#                       :version => ENV['version'],
#                       :name => scenario.full_description,
#                       :extendedDebugging => "true",
#                       :platform => ENV['platform'],
#                       'chromeOptions': {'args': ['--disable-web-security', '--user-data-dir=~/.e2e-chrome-profile']}}
#
#         puts '****** I am called testunner*******'
#         Capybara::Selenium::Driver.new(
#             app, :browser => :remote,
#             #url: "http://#{ENV['HUB_HOST']}/wd/hub",
#             url: "https://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:443/wd/hub",
#             desired_capabilities: capabilities
#
#         )
#       end
#
#
#   jobname = scenario.full_description
#   Capybara.session_name = "#{jobname}"
#   @driver = Capybara.current_session.driver
#   @driver.browser.file_detector = lambda do |args|
# # args => ["/path/to/file"]
#     str = args.first.to_s
#     str if File.exist?(str)
#   end
#   @session_id = @driver.browser.session_id
#   puts "SauceOnDemandSessionID=#{@session_id} job-name=#{jobname}"
#
#   else
    puts '****** I am local *********'
    config.app_host='https://gist.github.com'
    Capybara.default_driver =:selenium
    Capybara.register_driver :selenium do |app|
      opts = {browser: :chrome}
      if ENV['DEVICE_NAME']
        mobile_emulation = { "deviceName" => ENV['device_name'] }
        caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => { "mobileEmulation" => mobile_emulation })
        opts[:desired_capabilities] = caps
      end
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
  end
end
end

#  end
