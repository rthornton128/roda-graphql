require 'test_helper'

require 'routes/graphql'

class TestGraphql < ApplicationTest
  def test_show_success_with_get
    env = Rack::MockRequest.env_for('http://foo.bar')
    env[Rack::PATH_INFO] = ""
    
    Schema.stubs(:execute).once.returns({})
    Graphql.app.call(env)
  end

  def test_show_success_with_post
    env = Rack::MockRequest.env_for('http://foo.bar?query=mutation')
    env[Rack::PATH_INFO] = ""
    env[Rack::REQUEST_METHOD] = Rack::POST
    
    Schema.stubs(:execute).once.returns({})
    Graphql.app.call(env)
  end
end