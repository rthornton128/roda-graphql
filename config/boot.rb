# frozen_string_literal: true

require 'bundler/setup'
require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir(File.join(APP_ROOT, 'graphql'))
loader.push_dir(File.join(APP_ROOT, 'helpers'))
loader.push_dir(File.join(APP_ROOT, 'models'))
loader.push_dir(File.join(APP_ROOT, 'routes'))
loader.push_dir(File.join(APP_ROOT, 'test')) if test?
loader.enable_reloading
loader.setup
