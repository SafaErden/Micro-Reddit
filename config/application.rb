# rubocop:disable Style/Documentation
# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MicroReddit
  class Application < Rails::Application
    config.load_defaults 5.2
  end
end
# rubocop:enable Style/Documentation
