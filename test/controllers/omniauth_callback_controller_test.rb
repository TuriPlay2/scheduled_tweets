require "test_helper"

class OmniauthCallbackControllerTest < ActionDispatch::IntegrationTest
  test "should get twitter" do
    get omniauth_callback_twitter_url
    assert_response :success
  end
end
