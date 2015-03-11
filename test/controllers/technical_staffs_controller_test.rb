require 'test_helper'

class TechnicalStaffsControllerTest < ActionController::TestCase
  setup do
    @technical_staff = technical_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technical_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical_staff" do
    assert_difference('TechnicalStaff.count') do
      post :create, technical_staff: { person_id: @technical_staff.person_id, team_id: @technical_staff.team_id, team_id: @technical_staff.team_id, tech_role_id: @technical_staff.tech_role_id }
    end

    assert_redirected_to technical_staff_path(assigns(:technical_staff))
  end

  test "should show technical_staff" do
    get :show, id: @technical_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technical_staff
    assert_response :success
  end

  test "should update technical_staff" do
    patch :update, id: @technical_staff, technical_staff: { person_id: @technical_staff.person_id, team_id: @technical_staff.team_id, team_id: @technical_staff.team_id, tech_role_id: @technical_staff.tech_role_id }
    assert_redirected_to technical_staff_path(assigns(:technical_staff))
  end

  test "should destroy technical_staff" do
    assert_difference('TechnicalStaff.count', -1) do
      delete :destroy, id: @technical_staff
    end

    assert_redirected_to technical_staffs_path
  end
end
