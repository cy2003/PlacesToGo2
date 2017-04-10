class CreateUserLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_locations do |t|
      t.integer :user_id
      t.integer :location_id
      t.timestamps
    end
    add_index :user_locations, :user_id
    add_index :user_locations, :location_id
    add_index :user_locations, [:user_id, :location_id], unique: true
  end
end
