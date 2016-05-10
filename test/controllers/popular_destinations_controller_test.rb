require 'test_helper'

class PopularDestinationsControllerTest < ActionController::TestCase
  setup do
    @popular_destination = popular_destinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:popular_destinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create popular_destination" do
    assert_difference('PopularDestination.count') do
      post :create, popular_destination: { city: @popular_destination.city, city_code: @popular_destination.city_code, created_at: @popular_destination.created_at, destination: @popular_destination.destination, destination_code: @popular_destination.destination_code, is_delete: @popular_destination.is_delete }
    end

    assert_redirected_to popular_destination_path(assigns(:popular_destination))
  end

  test "should show popular_destination" do
    get :show, id: @popular_destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @popular_destination
    assert_response :success
  end

  test "should update popular_destination" do
    patch :update, id: @popular_destination, popular_destination: { city: @popular_destination.city, city_code: @popular_destination.city_code, created_at: @popular_destination.created_at, destination: @popular_destination.destination, destination_code: @popular_destination.destination_code, is_delete: @popular_destination.is_delete }
    assert_redirected_to popular_destination_path(assigns(:popular_destination))
  end

  test "should destroy popular_destination" do
    assert_difference('PopularDestination.count', -1) do
      delete :destroy, id: @popular_destination
    end

    assert_redirected_to popular_destinations_path
  end
end
