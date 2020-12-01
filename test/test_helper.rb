# frozen_string_literal: true

require 'test/unit'
require 'fixture_dependencies/test_unit/sequel'
require 'mocha/test_unit'

FixtureDependencies.fixture_path = File.join(APP_ROOT, 'test', 'fixtures')

module TestHelper
  class ApplicationTest < FixtureDependencies::SequelTestCase
    include FixtureDependencies::HelperMethods
  end
end
