class ProductAttribute < ApplicationRecord
	belongs_to :product, :foreign_key => :value, :primary_key => :value
    mount_uploader :image, ImageUploader
end
