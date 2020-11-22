APP_ROOT = File.expand_path('..', __dir__)

def development?
  env == 'development'
end

def production?
  env == 'production'
end

def test?
  env == 'test'
end

def env
  @env ||= ENV['ENV'] || ENV['RACK_ENV'] || 'production'
end