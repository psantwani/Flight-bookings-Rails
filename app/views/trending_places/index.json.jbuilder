json.array!(@trending_places) do |trending_place|
  json.extract! trending_place, :id, :name, :picture, :is_delete, :created_at
  json.url trending_place_url(trending_place, format: :json)
end
