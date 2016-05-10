class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :airline
      t.text :picture

      t.timestamps null: false
    end
  end
end
