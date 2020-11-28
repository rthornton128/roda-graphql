require 'test_helper'

require 'application'

class TestGraphiql < ApplicationTest
  def test_show
    env = Rack::MockRequest.env_for('http://foo.bar/graphiql')
    
    Helpers::Graphiql.any_instance.stubs(:result).once.returns('')
    Application.app.call(env)
  end

  def test_show_should_fail_on_post
    env = Rack::MockRequest.env_for('http://foo.bar/graphiql')
    env[Rack::REQUEST_METHOD] = Rack::POST
    
    Schema.stubs(:execute).never
    Helpers::Graphiql.any_instance.stubs(:result).never
    Application.app.call(env)
  end
end