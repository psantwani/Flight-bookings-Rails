class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email_id
      t.string :mobile
      t.integer :flight_id
      t.string :pnr
      t.string :price
      t.string :booking_status
      t.string :nominee_mobile
      t.timestamp :created_at

      t.timestamps null: false
    end
  end
end
