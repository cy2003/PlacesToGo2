class CreateUserCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :user_countries do |t|
      t.integer :user_id
      t.integer :country_id
      t.timestamps
    end
    add_index :user_countries, :user_id
    add_index :user_countries, :country_id
    add_index :user_countries, [:user_id, :country_id], unique: true
  end
end
