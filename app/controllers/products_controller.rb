class ProductsController < ApplicationController


	def index
		@products = ProductAttribute.all
	end

	def itemsnew
		@product = ProductAttribute.new
	end

	def new
		@product = ProductAttribute.new
	end

	def edit
		@product = ProductAttribute.find(params[:id])
	end

	def update
		@product = ProductAttribute.find(params[:id])
		if @product.update(product_params)
			redirect_to products_url
		else
			render 'edit'
		end
	end

	def create
		@product = ProductAttribute.new(product_params)
		if @product.save
			redirect_to products_url
		else
			redirect_to new_product_url
		end
	end

	def destroy
		@product = ProductAttribute.find(params[:id])
		@product.destroy
		redirect_to products_url
	end

	private

	def product_params
		params.require(:product_attribute).permit(:name,:value,:size,:description)
	end
end
