require 'test_helper'

class SubstitutionsControllerTest < ActionController::TestCase
  setup do
    @substitution = substitutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:substitutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create substitution" do
    assert_difference('Substitution.count') do
      post :create, substitution: { game_id: @substitution.game_id, player_in: @substitution.player_in, player_out: @substitution.player_out, team_id: @substitution.team_id, time: @substitution.time }
    end

    assert_redirected_to substitution_path(assigns(:substitution))
  end

  test "should show substitution" do
    get :show, id: @substitution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @substitution
    assert_response :success
  end

  test "should update substitution" do
    patch :update, id: @substitution, substitution: { game_id: @substitution.game_id, player_in: @substitution.player_in, player_out: @substitution.player_out, team_id: @substitution.team_id, time: @substitution.time }
    assert_redirected_to substitution_path(assigns(:substitution))
  end

  test "should destroy substitution" do
    assert_difference('Substitution.count', -1) do
      delete :destroy, id: @substitution
    end

    assert_redirected_to substitutions_path
  end
end
