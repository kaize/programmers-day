require 'simplecov'
SimpleCov.start('rails') if ENV["COVERAGE"]
require "test/unit"

ENV["RAILS_ENV"] = "test"

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| require f}
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include AuthHelper
  include TestSupport
  include FactoryGirl::Syntax::Methods
end

require 'mocha'
