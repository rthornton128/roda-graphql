# frozen_string_literal: true

class Application
  hash_branch('graphql') do |r|
    r.post(true) do
      query = r.params.fetch('query', '')

      ApplicationSchema.execute(query).to_h
    end
  end
end
