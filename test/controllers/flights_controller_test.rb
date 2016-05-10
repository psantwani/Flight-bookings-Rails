require 'test_helper'

class FlightsControllerTest < ActionController::TestCase
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post :create, flight: { airline: @flight.airline, arrival_airport: @flight.arrival_airport, arrival_time: @flight.arrival_time, created_at: @flight.created_at, departure_airport: @flight.departure_airport, departure_time: @flight.departure_time, flight_status: @flight.flight_status, is_delete: @flight.is_delete, rev_arrival_time: @flight.rev_arrival_time, rev_departure_time: @flight.rev_departure_time }
    end

    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should show flight" do
    get :show, id: @flight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flight
    assert_response :success
  end

  test "should update flight" do
    patch :update, id: @flight, flight: { airline: @flight.airline, arrival_airport: @flight.arrival_airport, arrival_time: @flight.arrival_time, created_at: @flight.created_at, departure_airport: @flight.departure_airport, departure_time: @flight.departure_time, flight_status: @flight.flight_status, is_delete: @flight.is_delete, rev_arrival_time: @flight.rev_arrival_time, rev_departure_time: @flight.rev_departure_time }
    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete :destroy, id: @flight
    end

    assert_redirected_to flights_path
  end
end
