require 'test_helper'

require 'routes/graphql'

class TestGraphql < ApplicationTest
  def test_show
    Schema.stubs(:execute).once.returns({})
   
    # request = Rack::MockRequest.new(Graphql.app)
    env = Rack::MockRequest.env_for('http://foo.bar')
    Graphql.app.call(env)
  end
end