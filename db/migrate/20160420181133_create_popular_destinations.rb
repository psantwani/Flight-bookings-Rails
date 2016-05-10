class CreatePopularDestinations < ActiveRecord::Migration
  def change
    create_table :popular_destinations do |t|
      t.string :city
      t.string :city_code
      t.string :destination
      t.string :destination_code
      t.boolean :is_delete
      t.timestamp :created_at

      t.timestamps null: false
    end
  end
end
