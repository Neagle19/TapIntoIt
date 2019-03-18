require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get notifications_create_url
    assert_response :success
  end

end
