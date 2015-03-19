require 'test_helper'

class PlayTypesControllerTest < ActionController::TestCase
  setup do
    @play_type = play_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:play_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play_type" do
    assert_difference('PlayType.count') do
      post :create, play_type: { name: @play_type.name }
    end

    assert_redirected_to play_type_path(assigns(:play_type))
  end

  test "should show play_type" do
    get :show, id: @play_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play_type
    assert_response :success
  end

  test "should update play_type" do
    patch :update, id: @play_type, play_type: { name: @play_type.name }
    assert_redirected_to play_type_path(assigns(:play_type))
  end

  test "should destroy play_type" do
    assert_difference('PlayType.count', -1) do
      delete :destroy, id: @play_type
    end

    assert_redirected_to play_types_path
  end
end
