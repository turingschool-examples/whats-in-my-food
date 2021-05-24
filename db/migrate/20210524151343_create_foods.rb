class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :gtin_ucp_code
      t.string :description
      t.string :brand

      t.timestamps
    end
  end
end
