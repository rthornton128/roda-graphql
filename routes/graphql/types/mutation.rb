# frozen_string_literal: true

module Types
  class Mutation < GraphQL::Schema::Object
    field(:create_user, mutation: Types::CreateUser)
  end
end
