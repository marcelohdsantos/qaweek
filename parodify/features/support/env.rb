require "capybara"
require "capybara/cucumber" 
require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
end
