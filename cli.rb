#!/usr/bin/env ruby
# frozen_string_literal: true

require 'thor'

APP_ROOT = __dir__

class CLI < Thor
  include Thor::Actions

  def self.exit_on_failure?
    true
  end

  desc 'migrate', 'Run migrations'
  def migrate
    require_relative 'config/environment'

    Sequel.extension(:migration)
    Sequel::Migrator.run(DB, 'migrate')
  end

  desc 'test', 'Run tests'
  def test(*_args)
    run('ruby -I. test/all.rb')
  end
end

CLI.start
