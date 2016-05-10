json.array!(@bookings) do |booking|
  json.extract! booking, :id, :name, :email_id, :mobile, :flight_id, :pnr, :price, :booking_status, :nominee_mobile, :created_at
  json.url booking_url(booking, format: :json)
end
