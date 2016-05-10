json.array!(@city_airports) do |city_airport|
  json.extract! city_airport, :id, :city, :city_code, :airport, :picture
  json.url city_airport_url(city_airport, format: :json)
end
