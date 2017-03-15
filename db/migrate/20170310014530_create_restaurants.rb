class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :website
      t.text :note
      t.integer :city_id

      t.timestamps
    end
  end
end