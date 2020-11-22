require_relative 'graphql/types/name_type'
require_relative 'graphql/types/query_type'
require_relative 'graphql/schema'

class Graphql < Roda
  plugin(:json)
  plugin(:json_parser)

  route do |r|
    query = r.params.fetch('query', '')
    Schema.execute(query).to_h
  end
end