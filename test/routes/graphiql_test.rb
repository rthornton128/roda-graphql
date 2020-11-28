require 'test_helper'

require 'routes/graphiql'

class TestGraphiql < ApplicationTest
  def test_show
    Helpers::Graphiql.any_instance.stubs(:result).once.returns('')
   
    env = Rack::MockRequest.env_for('http://foo.bar')
    env[Rack::PATH_INFO] = ""
    
    Graphiql.app.call(env)
  end
end