class Application
  route do |r|
    require_relative '../routes/graphql'
    require_relative '../routes/graphiql'

    r.on('graphql') do
      r.run(::Graphql)
    end

    r.on('graphiql') do
      r.run(::Graphiql)
    end
  end
end