# frozen_string_literal: true

require 'bundler'
require 'bundler/setup'

Bundler.require

require_relative 'config/environment'
require_relative 'application'

run Application.app
