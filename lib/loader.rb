# frozen_string_literal: true

def require_all(*paths)
  paths.each do |path|
    require_path(path)
  end
end

def require_path(path)
  Dir[File.expand_path('*.rb', path)].each do |file|
    require_relative(file)
  end
end
