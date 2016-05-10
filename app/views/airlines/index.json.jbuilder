json.array!(@airlines) do |airline|
  json.extract! airline, :id, :airline, :picture
  json.url airline_url(airline, format: :json)
end
