# frozen_string_literal: true

require 'test/unit'
require 'fixture_dependencies/test_unit/sequel'
require 'mocha/test_unit'

module TestHelper
  class ApplicationTest < FixtureDependencies::SequelTestCase; end
end
