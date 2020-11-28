# frozen_string_literal: true

require 'test_helper'

require 'models/user'

class TestUser < ApplicationTest
  def setup
    User.truncate
  end

  def test_user
    user = ::User.create(first_name: 'User', last_name: 'Name', email: 'user.name@something.com')

    user = User.find(id: user.id)

    assert_equal('User', user.first_name)
    assert_equal('Name', user.last_name)
    assert_equal('user.name@something.com', user.email)
  end

  def test_user_unique
    ::User.create(first_name: 'User', last_name: 'Name', email: 'user.name@something.com')

    assert_raise(Sequel::UniqueConstraintViolation) do
      ::User.create(first_name: 'User', last_name: 'Name', email: 'user.name@something.com')
    end
  end
end
