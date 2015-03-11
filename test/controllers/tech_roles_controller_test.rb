require 'test_helper'

class TechRolesControllerTest < ActionController::TestCase
  setup do
    @tech_role = tech_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tech_role" do
    assert_difference('TechRole.count') do
      post :create, tech_role: { name: @tech_role.name, photo: @tech_role.photo, short_name: @tech_role.short_name }
    end

    assert_redirected_to tech_role_path(assigns(:tech_role))
  end

  test "should show tech_role" do
    get :show, id: @tech_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tech_role
    assert_response :success
  end

  test "should update tech_role" do
    patch :update, id: @tech_role, tech_role: { name: @tech_role.name, photo: @tech_role.photo, short_name: @tech_role.short_name }
    assert_redirected_to tech_role_path(assigns(:tech_role))
  end

  test "should destroy tech_role" do
    assert_difference('TechRole.count', -1) do
      delete :destroy, id: @tech_role
    end

    assert_redirected_to tech_roles_path
  end
end
