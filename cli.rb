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

  desc 'server', 'Run server'
  def server
    run('rackup')
  end

  desc 'style', 'Run rubocop to check style'
  method_option :apply, type: :boolean, aliases: '-a', desc: 'Safe, non-destructive automatic cop fixes'
  method_option :unsafe_apply, type: :boolean, aliases: '-A', desc: 'Unsafe, destructive automatic cop fixes'
  def style
    run('bundle exec rubocop')
    run('bundle exec rubocop -a') if options.apply?
    run('bundle exec rubocop -A') if options.unsafe_apply?
  end

  desc 'test', 'Run tests'
  def test(*_args)
    run('ruby -I. test/all.rb')
  end
end

CLI.start
