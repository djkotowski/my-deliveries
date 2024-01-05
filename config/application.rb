# frozen_string_literal: true

require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module MyDeliveries
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w[assets tasks])
    config.api_only = true

    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid

      # noinspection RubyResolve
      g.factory_bot filename_proc: ->(table_name) { "#{table_name.singularize}_factory" }
    end
  end
end
