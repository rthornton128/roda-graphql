# frozen_string_literal: true

Dir[File.join(APP_ROOT, 'models', '*.rb')].each { |file| puts file; require file }
