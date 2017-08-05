class AddAttachmentImageToProductAttributes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :product_attributes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product_attributes, :image
  end
end
