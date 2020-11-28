require 'test_helper'

require 'routes/graphql'

class TestGraphql < ApplicationTest
  def test_show
    Schema.stubs(:execute).once.returns({})
   
    env = Rack::MockRequest.env_for('http://foo.bar')
    env[Rack::PATH_INFO] = ""
    
    Graphql.app.call(env)
  end
end