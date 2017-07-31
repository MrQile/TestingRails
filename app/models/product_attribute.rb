class ProductAttribute < ApplicationRecord
	belongs_to :product, foreign_key: "value"
end
