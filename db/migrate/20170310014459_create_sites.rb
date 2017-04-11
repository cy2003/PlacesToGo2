class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :website
      t.text :note
      t.references :siteable, polymorphic: true, index: true
      # same as
      # t.integer :siteable_id
      # t.string :siteable_type 
      t.timestamps
    end
  end
end
