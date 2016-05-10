require 'test_helper'

class TrendingPlacesControllerTest < ActionController::TestCase
  setup do
    @trending_place = trending_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trending_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trending_place" do
    assert_difference('TrendingPlace.count') do
      post :create, trending_place: { created_at: @trending_place.created_at, is_delete: @trending_place.is_delete, name: @trending_place.name, picture: @trending_place.picture }
    end

    assert_redirected_to trending_place_path(assigns(:trending_place))
  end

  test "should show trending_place" do
    get :show, id: @trending_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trending_place
    assert_response :success
  end

  test "should update trending_place" do
    patch :update, id: @trending_place, trending_place: { created_at: @trending_place.created_at, is_delete: @trending_place.is_delete, name: @trending_place.name, picture: @trending_place.picture }
    assert_redirected_to trending_place_path(assigns(:trending_place))
  end

  test "should destroy trending_place" do
    assert_difference('TrendingPlace.count', -1) do
      delete :destroy, id: @trending_place
    end

    assert_redirected_to trending_places_path
  end
end
