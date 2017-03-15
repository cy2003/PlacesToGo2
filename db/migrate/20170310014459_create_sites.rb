class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :website
      t.text :note
      t.integer :location_id

      t.timestamps
    end
  end
end
