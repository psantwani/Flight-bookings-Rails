require 'test_helper'

class CityAirportsControllerTest < ActionController::TestCase
  setup do
    @city_airport = city_airports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_airports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_airport" do
    assert_difference('CityAirport.count') do
      post :create, city_airport: { airport: @city_airport.airport, city: @city_airport.city, city_code: @city_airport.city_code }
    end

    assert_redirected_to city_airport_path(assigns(:city_airport))
  end

  test "should show city_airport" do
    get :show, id: @city_airport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_airport
    assert_response :success
  end

  test "should update city_airport" do
    patch :update, id: @city_airport, city_airport: { airport: @city_airport.airport, city: @city_airport.city, city_code: @city_airport.city_code }
    assert_redirected_to city_airport_path(assigns(:city_airport))
  end

  test "should destroy city_airport" do
    assert_difference('CityAirport.count', -1) do
      delete :destroy, id: @city_airport
    end

    assert_redirected_to city_airports_path
  end
end
