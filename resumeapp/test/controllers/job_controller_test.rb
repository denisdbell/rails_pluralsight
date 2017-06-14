require 'test_helper'

class JobControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get job_add_url
    assert_response :success
  end

  test "should get list" do
    get job_list_url
    assert_response :success
  end

end
