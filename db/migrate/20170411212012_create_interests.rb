class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.references :interestable, polymorphic: true, index: true
      t.timestamps
    end
  end
end


#same as

# class CreateInterests < ActiveRecord::Migration[5.0]
#   def change
#     create_table :interests do |t|
#       t.integer :user_id
#       t.integer :interestable_id
#       t.string :interestable_type
#       t.timestamps
#     end
#     add_index :interests, [:interestable_type, :interestable_id]
#   end
# end
