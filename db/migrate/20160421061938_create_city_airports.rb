class CreateCityAirports < ActiveRecord::Migration
  def change
    create_table :city_airports do |t|
      t.string :city
      t.string :city_code
      t.string :airport

      t.timestamps null: false
    end
  end
end
