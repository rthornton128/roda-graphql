# frozen_string_literal: true

require_relative 'graphql/schema'

class Graphql < Roda
  plugin(:json)
  plugin(:json_parser)

  route do |r|
    r.is(true, '') do
      @query = r.params.fetch('query', '')
      show
    end
  end

  private

  attr_reader :query

  def show
    Schema.execute(query).to_h
  end
end
