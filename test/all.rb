# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'test'

require 'env'
require 'application'

Sequel.extension(:migration)
Sequel::Migrator.run(DB, 'migrate')

Dir[File.join(__dir__, '**', '*_test.rb')].sort.each { |file| require file }
