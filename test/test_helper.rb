# rubocop:disable Style/ClassAndModuleChildren
# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
# rubocop:enable Style/ClassAndModuleChildren
