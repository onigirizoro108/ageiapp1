class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :item
      t.integer :price
      t.integer :unit
      t.datetime :shipping
      t.string :photo
      t.text :comment

      t.timestamps
    end
  end
end
