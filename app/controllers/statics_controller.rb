class StaticsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def show
		product_value = Product.find(params[:id])
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

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to root_url
		else
			render 'edit'
		end
	end

	private

		def product_params
			params.require(:product).permit(:name,:value)
		end	
end
