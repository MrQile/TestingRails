class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.integer :category_id
      t.string :speed
      t.string :size
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
