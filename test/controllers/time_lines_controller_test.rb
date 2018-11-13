require 'test_helper'

class TimeLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_line = time_lines(:one)
  end

  test "should get index" do
    get time_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_time_line_url
    assert_response :success
  end

  test "should create time_line" do
    assert_difference('TimeLine.count') do
      post time_lines_url, params: { time_line: { RemaingHours: @time_line.RemaingHours, StageID: @time_line.StageID, TaskID: @time_line.TaskID, TaskStatusID: @time_line.TaskStatusID, WorkID: @time_line.WorkID } }
    end

    assert_redirected_to time_line_url(TimeLine.last)
  end

  test "should show time_line" do
    get time_line_url(@time_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_line_url(@time_line)
    assert_response :success
  end

  test "should update time_line" do
    patch time_line_url(@time_line), params: { time_line: { RemaingHours: @time_line.RemaingHours, StageID: @time_line.StageID, TaskID: @time_line.TaskID, TaskStatusID: @time_line.TaskStatusID, WorkID: @time_line.WorkID } }
    assert_redirected_to time_line_url(@time_line)
  end

  test "should destroy time_line" do
    assert_difference('TimeLine.count', -1) do
      delete time_line_url(@time_line)
    end

    assert_redirected_to time_lines_url
  end
end
