module Types
  class CreateUser < GraphQL::Schema::Mutation
    null(true)

    argument(:first_name, String, required: true)
    argument(:last_name, String, required: true)
    argument(:email, String, required: true)

    field(:user, User, null: true)
    field(:errors, [String], null: false)

    def resolve(first_name:, last_name:, email:)
      user = ::User.create(first_name: first_name, last_name: last_name, email: email)

      {
        user: nil,
        errors: ['User error message'],
      } unless user

      {
        user: user,
        errors: [],
      }
    end
  end
end