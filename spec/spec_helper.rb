require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'

Capybara.run_server = false
Capybara.default_driver = :chrome
Capybara.app_host = 'http://www.google.com'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.before(:all) do
    @root = '/'
  end
end
