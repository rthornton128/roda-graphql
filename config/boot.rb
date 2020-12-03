# frozen_string_literal: true

require 'bundler/setup'
require 'bootsnap'
require 'zeitwerk'

Bootsnap.setup(
  cache_dir: 'tmp/cache',
  development_mode: Env.development?,
  load_path_cache: true,
  autoload_paths_cache: false,
  disable_trace: false,
  compile_cache_iseq: !Env.test?,
  compile_cache_yaml: true
)

loader = Zeitwerk::Loader.new
loader.push_dir(File.join(APP_ROOT, 'graphql'))
loader.push_dir(File.join(APP_ROOT, 'helpers'))
loader.push_dir(File.join(APP_ROOT, 'models'))
loader.push_dir(File.join(APP_ROOT, 'routes'))
loader.push_dir(File.join(APP_ROOT, 'test')) if Env.test?

# Zeitwerk expects a file to declare a constant matching its filename but
# routes in this app extend the core Application. Ignore them to prevent
# errors when preloading with Bootsnap
loader.ignore(File.join(APP_ROOT, 'routes'))

loader.enable_reloading
loader.setup
