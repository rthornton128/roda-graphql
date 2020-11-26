# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:users) do
      primary_key(:id)
      String(:first_name, null: false)
      String(:last_name, null: false)
      String(:email, null: false)
      index(:email, unique: true)
      index(%i[first_name last_name])
    end
  end
end
