require 'selenium-webdriver'
require 'faker'
require_relative '../lib/DemoQAForm'
require_relative '../lib/Generator/Generator'
require_relative '../lib/Generator/services/RandomFormData'

RSpec.configure do |config|
  config.formatter = :documentation
end
