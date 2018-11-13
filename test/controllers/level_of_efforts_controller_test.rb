require 'test_helper'

class LevelOfEffortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_effort = level_of_efforts(:one)
  end

  test "should get index" do
    get level_of_efforts_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_effort_url
    assert_response :success
  end

  test "should create level_of_effort" do
    assert_difference('LevelOfEffort.count') do
      post level_of_efforts_url, params: { level_of_effort: { LOEMax: @level_of_effort.LOEMax, LOEMin: @level_of_effort.LOEMin, PortID: @level_of_effort.PortID } }
    end

    assert_redirected_to level_of_effort_url(LevelOfEffort.last)
  end

  test "should show level_of_effort" do
    get level_of_effort_url(@level_of_effort)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_effort_url(@level_of_effort)
    assert_response :success
  end

  test "should update level_of_effort" do
    patch level_of_effort_url(@level_of_effort), params: { level_of_effort: { LOEMax: @level_of_effort.LOEMax, LOEMin: @level_of_effort.LOEMin, PortID: @level_of_effort.PortID } }
    assert_redirected_to level_of_effort_url(@level_of_effort)
  end

  test "should destroy level_of_effort" do
    assert_difference('LevelOfEffort.count', -1) do
      delete level_of_effort_url(@level_of_effort)
    end

    assert_redirected_to level_of_efforts_url
  end
end
