require 'test_helper'

class CompletedVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_verification = completed_verifications(:one)
  end

  test "should get index" do
    get completed_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_completed_verification_url
    assert_response :success
  end

  test "should create completed_verification" do
    assert_difference('CompletedVerification.count') do
      post completed_verifications_url, params: { completed_verification: {  } }
    end

    assert_redirected_to completed_verification_url(CompletedVerification.last)
  end

  test "should show completed_verification" do
    get completed_verification_url(@completed_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_completed_verification_url(@completed_verification)
    assert_response :success
  end

  test "should update completed_verification" do
    patch completed_verification_url(@completed_verification), params: { completed_verification: {  } }
    assert_redirected_to completed_verification_url(@completed_verification)
  end

  test "should destroy completed_verification" do
    assert_difference('CompletedVerification.count', -1) do
      delete completed_verification_url(@completed_verification)
    end

    assert_redirected_to completed_verifications_url
  end
end
