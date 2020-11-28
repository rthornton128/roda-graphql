require 'test_helper'

require 'routes/graphiql'

class TestGraphiql < ApplicationTest
  def test_show
    Helpers::Graphiql.any_instance.stubs(:result).once.returns('')
   
    env = Rack::MockRequest.env_for('http://foo.bar')
    env[Rack::PATH_INFO] = ""
    
    Graphiql.app.call(env)
  end

  def test_show_should_fail_on_post
    env = Rack::MockRequest.env_for('http://foo.bar')
    env[Rack::PATH_INFO] = ""
    env[Rack::REQUEST_METHOD] = Rack::POST
    
    Schema.stubs(:execute).never
    Graphiql.app.call(env)
  end
end