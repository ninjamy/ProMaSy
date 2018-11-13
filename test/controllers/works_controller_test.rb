require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get new" do
    get new_work_url
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post works_url, params: { work: { DateDeleted: @work.DateDeleted, EstLOE: @work.EstLOE, ParentWorkID: @work.ParentWorkID, PortID: @work.PortID, RequestByID: @work.RequestByID, StageID: @work.StageID, WorkDescription: @work.WorkDescription, WorkName: @work.WorkName, WorkOwnerID: @work.WorkOwnerID, WorkTypeID: @work.WorkTypeID } }
    end

    assert_redirected_to work_url(Work.last)
  end

  test "should show work" do
    get work_url(@work)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_url(@work)
    assert_response :success
  end

  test "should update work" do
    patch work_url(@work), params: { work: { DateDeleted: @work.DateDeleted, EstLOE: @work.EstLOE, ParentWorkID: @work.ParentWorkID, PortID: @work.PortID, RequestByID: @work.RequestByID, StageID: @work.StageID, WorkDescription: @work.WorkDescription, WorkName: @work.WorkName, WorkOwnerID: @work.WorkOwnerID, WorkTypeID: @work.WorkTypeID } }
    assert_redirected_to work_url(@work)
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete work_url(@work)
    end

    assert_redirected_to works_url
  end
end
