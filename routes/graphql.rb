require_relative 'graphql/types/user'
require_relative 'graphql/types/create_user'
require_relative 'graphql/types/mutation'
require_relative 'graphql/types/query'
require_relative 'graphql/schema'

class Graphql < Roda
  plugin(:json)
  plugin(:json_parser)

  route do |r|
    query = r.params.fetch('query', '')
    Schema.execute(query).to_h
  end
end