module Types
  class Name < GraphQL::Schema::Object
    description('Name type')

    field(:name, String, null: false, description: 'Name field')

    def name
      'Rob'
    end
  end
end