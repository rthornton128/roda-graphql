require 'bundler'
require 'bundler/setup'

Bundler.require

require_relative 'config/environment'
require_relative 'application'

run Application.freeze.app