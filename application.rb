# frozen_string_literal: true

APP_ROOT = __dir__

require_relative 'config/environment'

class Application < Roda
  plugin(:hash_routes)
  plugin(:json)
  plugin(:json_parser)

  Dir[File.join('routes', '*.rb')].each { |file| require_relative file }

  route(&:hash_routes)
end
