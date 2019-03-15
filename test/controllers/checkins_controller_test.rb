require 'test_helper'

class CheckinsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get checkins_create_url
    assert_response :success
  end

end
