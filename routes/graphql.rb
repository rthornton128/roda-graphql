# frozen_string_literal: true

require_relative 'graphql/schema'

class Application

  hash_branch('graphql') do |r|
    r.post(true) do
      query = r.params.fetch('query', '')
    
      Schema.execute(query).to_h
    end
  end

  private
end
