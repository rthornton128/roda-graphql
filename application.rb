# frozen_string_literal: true

APP_ROOT = File.expand_path(__dir__)

class Application < Roda
  plugin(:json)
  plugin(:json_parser)
  
  require_relative 'config/routes'
  require_relative 'models'
end