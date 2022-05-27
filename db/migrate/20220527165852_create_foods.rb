class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :gtinupc
      t.string :description
      t.string :brand_owner
      t.string :ingredients

      t.timestamps
    end
  end
end
