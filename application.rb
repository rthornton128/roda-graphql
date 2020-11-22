# frozen_string_literal: true

APP_ROOT = File.expand_path(__dir__)

class Application < Roda
  require_relative 'config/routes'
end