require 'logger'

require_relative('environment')

DB = Sequel.sqlite(File.expand_path('roda-graphql.db', APP_ROOT), loggers: [Logger.new($stdout)])