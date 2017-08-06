class AddImageToProductAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :product_attributes, :image, :string
  end
end
