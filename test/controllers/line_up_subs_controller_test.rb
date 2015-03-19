require 'test_helper'

class LineUpSubsControllerTest < ActionController::TestCase
  setup do
    @line_up_sub = line_up_subs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_up_subs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_up_sub" do
    assert_difference('LineUpSub.count') do
      post :create, line_up_sub: { lineup_id: @line_up_sub.lineup_id, player_1: @line_up_sub.player_1, player_2: @line_up_sub.player_2, player_3: @line_up_sub.player_3, player_4: @line_up_sub.player_4, player_5: @line_up_sub.player_5, player_6: @line_up_sub.player_6, player_7: @line_up_sub.player_7 }
    end

    assert_redirected_to line_up_sub_path(assigns(:line_up_sub))
  end

  test "should show line_up_sub" do
    get :show, id: @line_up_sub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_up_sub
    assert_response :success
  end

  test "should update line_up_sub" do
    patch :update, id: @line_up_sub, line_up_sub: { lineup_id: @line_up_sub.lineup_id, player_1: @line_up_sub.player_1, player_2: @line_up_sub.player_2, player_3: @line_up_sub.player_3, player_4: @line_up_sub.player_4, player_5: @line_up_sub.player_5, player_6: @line_up_sub.player_6, player_7: @line_up_sub.player_7 }
    assert_redirected_to line_up_sub_path(assigns(:line_up_sub))
  end

  test "should destroy line_up_sub" do
    assert_difference('LineUpSub.count', -1) do
      delete :destroy, id: @line_up_sub
    end

    assert_redirected_to line_up_subs_path
  end
end
