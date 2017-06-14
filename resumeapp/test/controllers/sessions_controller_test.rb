require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

  test "should do post" do
    post login_path, params: { }
    assert_response :success
    
  end

end
