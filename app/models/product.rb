class Product < ApplicationRecord
	self.primary_key = "value"
	has_many :product_categories ,dependent: :destroy
end
