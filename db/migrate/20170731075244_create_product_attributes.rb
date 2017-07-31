class CreateProductAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_attributes do |t|
      t.string :name
      t.integer :value
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
