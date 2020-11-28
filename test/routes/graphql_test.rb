# frozen_string_literal: true

class TestGraphql < TestHelper::ApplicationTest
  def test_show_failure_with_get
    env = Rack::MockRequest.env_for('http://foo.bar/graphql')

    ApplicationSchema.stubs(:execute).never
    Application.app.call(env)
  end

  def test_show_success_with_post
    env = Rack::MockRequest.env_for('http://foo.bar/graphql?query=mutation')
    env[Rack::REQUEST_METHOD] = Rack::POST

    ApplicationSchema.stubs(:execute).once.returns({})
    Application.app.call(env)
  end
end
