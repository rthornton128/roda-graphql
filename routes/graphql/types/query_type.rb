module Types
  class Query < GraphQL::Schema::Object
      description('The query root of this schema')

      field(:name, Name, null: true) do
          description('Find a name')
      end

      def name
        'Rob'
      end
  end
end