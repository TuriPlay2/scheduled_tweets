require "test_helper"

class PastelControllerTest < ActionDispatch::IntegrationTest
  test "should get twitter" do
    get pastel_twitter_url
    assert_response :success
  end
end
