# frozen_string_literal: true

class TestGraphiql < TestHelper::ApplicationTest
  def test_show
    env = Rack::MockRequest.env_for('http://foo.bar/graphiql')

    GraphiqlHelper.any_instance.stubs(:result).once.returns('')
    Application.app.call(env)
  end

  def test_show_should_fail_on_post
    env = Rack::MockRequest.env_for('http://foo.bar/graphiql')
    env[Rack::REQUEST_METHOD] = Rack::POST

    ApplicationSchema.stubs(:execute).never
    GraphiqlHelper.any_instance.stubs(:result).never
    Application.app.call(env)
  end
end
