require 'test_helper'

class ResumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get resumes_url
    assert_response :success
  end

  test "should get new" do
    get new_resume_url
    assert_response :success
  end

  test "should create resume" do
    assert_difference('Resume.count') do
      post resumes_url, params: { resume: { city: @resume.city, email: @resume.email, name: @resume.name, phone: @resume.phone, state: @resume.state, summary: @resume.summary, zip: @resume.zip } }
    end

    assert_redirected_to resume_url(Resume.last)
  end

  test "should show resume" do
    get resume_url(@resume)
    assert_response :success
  end

  test "should get edit" do
    get edit_resume_url(@resume)
    assert_response :success
  end

  test "should update resume" do
    patch resume_url(@resume), params: { resume: { city: @resume.city, email: @resume.email, name: @resume.name, phone: @resume.phone, state: @resume.state, summary: @resume.summary, zip: @resume.zip } }
    assert_redirected_to resume_url(@resume)
  end

  test "should destroy resume" do
    assert_difference('Resume.count', -1) do
      delete resume_url(@resume)
    end

    assert_redirected_to resumes_url
  end
end
