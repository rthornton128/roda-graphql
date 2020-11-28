# frozen_string_literal: true

require_relative 'helpers/graphiql'

class Application
  hash_routes.on('graphiql') do |r|
    r.get(true) do
      params = r.params
      path = File.join(APP_ROOT, 'views', 'graphiql.erb')

      helper = Helpers::Graphiql.new(params, template_path: path)
      helper.result
    end
  end
end
