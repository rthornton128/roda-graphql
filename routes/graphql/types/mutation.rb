module Types
  class Mutation < GraphQL::Schema::Object
    field(:create_user, mutation: Types::CreateUser)
  end
end
