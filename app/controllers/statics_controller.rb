class StaticsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def show
		product_value = Product.find(params[:prod_id])
		@product_attribute = ProductAttribute.where(value: product_value.value)
	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	private

		def product_params
			params.require(:product).permit(:name,:value)
		end	
end
