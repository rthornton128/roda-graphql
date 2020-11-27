# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'bundler'
gem 'graphql'
gem 'rack-graphiql'
gem 'roda'
gem 'sequel'
gem 'sqlite3'

group :development, :test do
  gem 'thor', require: false
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-sequel', require: false
end

group :test do
  gem 'mocha', require: false
  gem 'test-unit', require: 'test/unit'
end
