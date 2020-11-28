# frozen_string_literal: true

class ApplicationSchema < GraphQL::Schema
  query(Types::Query)
  mutation(Types::Mutation)
end
