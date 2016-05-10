json.array!(@popular_destinations) do |popular_destination|
  json.extract! popular_destination, :id, :city, :city_code, :destination, :destination_code, :is_delete, :created_at
  json.url popular_destination_url(popular_destination, format: :json)
end
