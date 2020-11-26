class Schema < GraphQL::Schema
  query(Types::Query)
  mutation(Types::Mutation)
end
