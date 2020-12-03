# frozen_string_literal: true

require 'logger'

if Env.production?
  DB = Sequel.sqlite(File.expand_path('production.sqlite3', "#{APP_ROOT}/db"), loggers: [Logger.new($stdout)])
end

DB = Sequel.sqlite(File.expand_path('test.sqlite3', "#{APP_ROOT}/db")) if Env.test?

if Env.development?
  DB = Sequel.sqlite(File.expand_path('development.sqlite3', "#{APP_ROOT}/db"), loggers: [Logger.new($stdout)])
end
