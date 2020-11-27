# frozen_string_literal: true

require_relative 'helpers/graphiql'

class Graphiql < Roda
  plugin(:json)

  route do |r|
    r.is(true) do
      @params = r.params
      show
    end
  end

  def show
    path = File.join(APP_ROOT, 'routes', 'views', 'graphiql.erb')

    helper = Helpers::Graphiql.new(@params, template_path: path)
    helper.result
  end
end
