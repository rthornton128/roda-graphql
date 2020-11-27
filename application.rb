# frozen_string_literal: true

APP_ROOT = __dir__

require_relative 'config/environment'

class Application < Roda
  plugin(:json)
  plugin(:json_parser)

  require_relative 'config/routes'
  require_relative 'models'
end
