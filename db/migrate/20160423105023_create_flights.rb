class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :departure_airport
      t.string :arrival_airport
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :flight_status
      t.datetime :rev_departure_time
      t.datetime :rev_arrival_time
      t.boolean :is_delete
      t.timestamp :created_at

      t.timestamps null: false
    end
  end
end
