require 'test_helper'

class LineUpsControllerTest < ActionController::TestCase
  setup do
    @line_up = line_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_up" do
    assert_difference('LineUp.count') do
      post :create, line_up: { game_id: @line_up.game_id, player_10: @line_up.player_10, player_11: @line_up.player_11, player_1: @line_up.player_1, player_2: @line_up.player_2, player_3: @line_up.player_3, player_4: @line_up.player_4, player_5: @line_up.player_5, player_6: @line_up.player_6, player_7: @line_up.player_7, player_8: @line_up.player_8, player_9: @line_up.player_9, team_id: @line_up.team_id }
    end

    assert_redirected_to line_up_path(assigns(:line_up))
  end

  test "should show line_up" do
    get :show, id: @line_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_up
    assert_response :success
  end

  test "should update line_up" do
    patch :update, id: @line_up, line_up: { game_id: @line_up.game_id, player_10: @line_up.player_10, player_11: @line_up.player_11, player_1: @line_up.player_1, player_2: @line_up.player_2, player_3: @line_up.player_3, player_4: @line_up.player_4, player_5: @line_up.player_5, player_6: @line_up.player_6, player_7: @line_up.player_7, player_8: @line_up.player_8, player_9: @line_up.player_9, team_id: @line_up.team_id }
    assert_redirected_to line_up_path(assigns(:line_up))
  end

  test "should destroy line_up" do
    assert_difference('LineUp.count', -1) do
      delete :destroy, id: @line_up
    end

    assert_redirected_to line_ups_path
  end
end
