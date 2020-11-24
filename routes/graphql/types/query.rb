module Types
  class Query < GraphQL::Schema::Object
    description('The query root of this schema')

    field(:user, User, null: true) do
        description('Find a name')
    end

    field(:users, [User], null: false)

    def user
      ::User.new(first_name: 'Robert', last_name: 'Thornton', email: 'rob.thornton@example.com')
    end

    def users
      ::User.all
    end
  end
end