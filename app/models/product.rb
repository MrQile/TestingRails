class Product < ApplicationRecord
	has_many :product_attributes , dependent: :destroy, :foreign_key => :value, :primary_key => :value
end
