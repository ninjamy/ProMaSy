require 'test_helper'

class WorkGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_group = work_groups(:one)
  end

  test "should get index" do
    get work_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_work_group_url
    assert_response :success
  end

  test "should create work_group" do
    assert_difference('WorkGroup.count') do
      post work_groups_url, params: { work_group: { EnvironmentID: @work_group.EnvironmentID, PortID: @work_group.PortID, RoleID: @work_group.RoleID, StageID: @work_group.StageID, TaskTypeID: @work_group.TaskTypeID, WorkGroupOrder: @work_group.WorkGroupOrder, WorkTypeID: @work_group.WorkTypeID } }
    end

    assert_redirected_to work_group_url(WorkGroup.last)
  end

  test "should show work_group" do
    get work_group_url(@work_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_group_url(@work_group)
    assert_response :success
  end

  test "should update work_group" do
    patch work_group_url(@work_group), params: { work_group: { EnvironmentID: @work_group.EnvironmentID, PortID: @work_group.PortID, RoleID: @work_group.RoleID, StageID: @work_group.StageID, TaskTypeID: @work_group.TaskTypeID, WorkGroupOrder: @work_group.WorkGroupOrder, WorkTypeID: @work_group.WorkTypeID } }
    assert_redirected_to work_group_url(@work_group)
  end

  test "should destroy work_group" do
    assert_difference('WorkGroup.count', -1) do
      delete work_group_url(@work_group)
    end

    assert_redirected_to work_groups_url
  end
end
