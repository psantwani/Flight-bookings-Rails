class AddPriceToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :price, :string
  end
end
