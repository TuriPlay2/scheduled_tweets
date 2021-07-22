require "test_helper"

class PasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get def" do
    get password_def_url
    assert_response :success
  end
end
