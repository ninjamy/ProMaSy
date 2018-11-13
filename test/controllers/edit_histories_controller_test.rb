require 'test_helper'

class EditHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edit_history = edit_histories(:one)
  end

  test "should get index" do
    get edit_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_edit_history_url
    assert_response :success
  end

  test "should create edit_history" do
    assert_difference('EditHistory.count') do
      post edit_histories_url, params: { edit_history: { ColumName: @edit_history.ColumName, NewValue: @edit_history.NewValue, OldValue: @edit_history.OldValue, TableName: @edit_history.TableName } }
    end

    assert_redirected_to edit_history_url(EditHistory.last)
  end

  test "should show edit_history" do
    get edit_history_url(@edit_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_edit_history_url(@edit_history)
    assert_response :success
  end

  test "should update edit_history" do
    patch edit_history_url(@edit_history), params: { edit_history: { ColumName: @edit_history.ColumName, NewValue: @edit_history.NewValue, OldValue: @edit_history.OldValue, TableName: @edit_history.TableName } }
    assert_redirected_to edit_history_url(@edit_history)
  end

  test "should destroy edit_history" do
    assert_difference('EditHistory.count', -1) do
      delete edit_history_url(@edit_history)
    end

    assert_redirected_to edit_histories_url
  end
end
