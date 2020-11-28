# frozen_string_literal: true

class Application
  hash_routes.on('graphiql') do |r|
    r.get(true) do
      params = r.params
      path = File.join(APP_ROOT, 'views', 'graphiql.erb')

      helper = ::GraphiqlHelper.new(params, template_path: path)
      helper.result
    end
  end
end
