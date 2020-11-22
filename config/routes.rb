class Application
  route do |r|
    r.on 'graphql' do
      'graphql'
      # r.post do
      #   result = Schema.execute(graphql_query, variables: graphql_variables)

      #   response['Content-Type'] = 'application/json; charset=utf-8'
      #   result.to_json
      #   end
    end

    r.on 'graphiql' do
      'graphiql'
      # r.get do
      #   GraphiqlController.new(params: request.body.read).process
      # end
    end
  end
end