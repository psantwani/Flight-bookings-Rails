class AddPictureToCityAirports < ActiveRecord::Migration
  def change
    add_column :city_airports, :picture, :string
  end
end
