require 'test_helper'

class StadiumsControllerTest < ActionController::TestCase
  setup do
    @stadium = stadiums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stadiums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stadium" do
    assert_difference('Stadium.count') do
      post :create, stadium: { capacity: @stadium.capacity, city_id: @stadium.city_id, country_id: @stadium.country_id, founded_date: @stadium.founded_date, length: @stadium.length, name: @stadium.name, photo: @stadium.photo, width: @stadium.width }
    end

    assert_redirected_to stadium_path(assigns(:stadium))
  end

  test "should show stadium" do
    get :show, id: @stadium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stadium
    assert_response :success
  end

  test "should update stadium" do
    patch :update, id: @stadium, stadium: { capacity: @stadium.capacity, city_id: @stadium.city_id, country_id: @stadium.country_id, founded_date: @stadium.founded_date, length: @stadium.length, name: @stadium.name, photo: @stadium.photo, width: @stadium.width }
    assert_redirected_to stadium_path(assigns(:stadium))
  end

  test "should destroy stadium" do
    assert_difference('Stadium.count', -1) do
      delete :destroy, id: @stadium
    end

    assert_redirected_to stadiums_path
  end
end
