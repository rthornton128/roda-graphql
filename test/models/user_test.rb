# frozen_string_literal: true

class TestUser < TestHelper::ApplicationTest
  def setup
    User.truncate
  end

  def test_user
    user_data = { first_name: 'User', last_name: 'Name', email: 'user.name@something.com' }
    user = User.create(user_data)

    user = User.find(id: user.id)

    assert_equal(user_data[:first_name], user.first_name)
    assert_equal(user_data[:last_name], user.last_name)
    assert_equal(user_data[:email], user.email)
  end

  def test_user_unique
    user = load(:user__user)

    assert_raise(Sequel::UniqueConstraintViolation) do
      User.create(first_name: user.first_name, last_name: user.last_name, email: user.email)
    end
  end
end
