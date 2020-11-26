# frozen_string_literal: true

class Schema < GraphQL::Schema
  query(Types::Query)
  mutation(Types::Mutation)
end
