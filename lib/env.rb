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
      @environment ||= ENV['RACK_ENV'] || 'development'
    end
  end
end
