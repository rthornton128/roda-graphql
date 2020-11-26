class Graphiql < Roda
  plugin(:h)
  plugin(:json)

  route do |r|
    r.is(true) do
      @params = r.params
      show
    end
  end

  def show
    path = File.join(APP_ROOT, 'routes', 'views', 'graphiql.erb')
    template = ERB.new(File.read(path))
    template.result(binding)
  end

  private

  attr_reader :params

  def endpoint
    'graphql'
  end

  def graphiql_version
    '0.10.2'
  end

  def fetch_version
    '2.0.1'
  end

  def react_version
    '15.5.4'
  end

  def react_dom_version
    '15.5.4'
  end

  def graphiql_operation_name
    params.fetch(:operationName, '')
  end

  def graphiql_query
    params.fetch(:query, '')
  end

  def graphiql_variables
    params.fetch(:variables, '')
  end
end
