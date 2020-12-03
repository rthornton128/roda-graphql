# frozen_string_literal: true

environment_path = File.join(APP_ROOT, 'config', 'environments', "#{Env}.rb")

require environment_path if File.exist?(environment_path)

require_relative 'application'
