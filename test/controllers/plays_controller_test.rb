require 'test_helper'

class PlaysControllerTest < ActionController::TestCase
  setup do
    @play = plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play" do
    assert_difference('Play.count') do
      post :create, play: { assist_by: @play.assist_by, by: @play.by, game_id: @play.game_id, playtype_id: @play.playtype_id, time: @play.time, x_coordinate: @play.x_coordinate, y_coordinate: @play.y_coordinate }
    end

    assert_redirected_to play_path(assigns(:play))
  end

  test "should show play" do
    get :show, id: @play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play
    assert_response :success
  end

  test "should update play" do
    patch :update, id: @play, play: { assist_by: @play.assist_by, by: @play.by, game_id: @play.game_id, playtype_id: @play.playtype_id, time: @play.time, x_coordinate: @play.x_coordinate, y_coordinate: @play.y_coordinate }
    assert_redirected_to play_path(assigns(:play))
  end

  test "should destroy play" do
    assert_difference('Play.count', -1) do
      delete :destroy, id: @play
    end

    assert_redirected_to plays_path
  end
end
