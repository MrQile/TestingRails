class ProductAttribute < ApplicationRecord
	belongs_to :product, dependent: :destroy, foreign_key: "value"
end
