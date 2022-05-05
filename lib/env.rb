# frozen_string_literal: true

# Environment
module Env
  class << self
    def development?
      environment == 'development'
    end

    def production?
      environment == 'production'
    end

    def test?
      environment == 'test'
    end

    def to_s
      environment
    end

    private

    def environment
      @environment ||= ENV.fetch('RACK_ENV', 'production')
    end
  end
end
