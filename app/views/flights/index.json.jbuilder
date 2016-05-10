json.array!(@flights) do |flight|
  json.extract! flight, :id, :airline, :departure_airport, :arrival_airport, :departure_time, :arrival_time, :flight_status, :rev_departure_time, :rev_arrival_time, :is_delete, :created_at, :price
  json.url flight_url(flight, format: :json)
end
