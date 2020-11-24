module Types
  class User < GraphQL::Schema::Object
    description('User type')

    field(:first_name, String, null: false, description: 'First name')
    field(:last_name, String, null: false, description: 'Last name')
    field(:email, String, null: false, description: 'Email')

    def first_name
      object.first_name
    end

    def last_name
      object.last_name
    end

    def email
      object.email
    end
  end
end