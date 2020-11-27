# frozen_string_literal: true

require_relative 'types/user'
require_relative 'types/create_user'
require_relative 'types/mutation'
require_relative 'types/query'

class Schema < GraphQL::Schema
  query(Types::Query)
  mutation(Types::Mutation)
end
