# frozen_string_literal: true

class GraphiqlHelper
  include ERB::Util

  def endpoint
    'graphql'
  end

  def graphiql_version
    '0.10.2'
  end

  def fetch_version
    '2.0.1'
  end

  def react_version
    '15.5.4'
  end

  def react_dom_version
    '15.5.4'
  end

  def graphiql_operation_name
    params.fetch(:operationName, '')
  end

  def graphiql_query
    params.fetch(:query, '')
  end

  def graphiql_variables
    params.fetch(:variables, '')
  end

  def result
    template.result(binding)
  end

  private

  attr_reader :params, :template

  def initialize(params, template_path:)
    @params = params
    @template = ERB.new(File.read(template_path))
  end
end
