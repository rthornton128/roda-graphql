# frozen_string_literal: true

require 'test_helper'

require 'user'

class TestUser < ApplicationTest
  def test_user
    ::User.new
  end
end
