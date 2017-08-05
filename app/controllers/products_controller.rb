class ProductsController < ApplicationController


	def index
		@products = ProductAttribute.all
	end

	def itemsnew
		@product = ProductAttribute.new
	end
	
	def new
		@product = ProductAttribute.new
		@value = params[:value]
	end

	def create
		@product = ProductAttribute.new(product_params)
		if @product.save
			redirect_to statics_url
		else
			redirect_to new_product_url
		end
	end


	private

	def product_params
		params.require(:product_attribute).permit(:name,:value,:size,:description)
	end
end
