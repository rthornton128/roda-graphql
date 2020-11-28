# frozen_string_literal: true

Dir[File.join(APP_ROOT, 'models', '*.rb')].each { |file| require file }
