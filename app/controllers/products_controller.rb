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

	def show
		@product = ProductAttribute.find(params[:id])
	end

	def update
		@product = ProductAttribute.find(params[:id])
		if @product.update(product_params)
			if params[:val] == "true"
				redirect_to product_path
			else
				redirect_to products_url
			end
		else
			render 'edit'
		end
	end

	def create
		@product = ProductAttribute.new(product_params)
		if @product.save
			if params[:val] == "true"
				prod_id = Product.find_by(value: @product.value) 
				redirect_to static_path(prod_id.id)
			else
				redirect_to products_url
			end
		else
			redirect_to new_product_url
		end
	end

	def destroy
		@product = ProductAttribute.find(params[:id])
		@product.destroy
		if params[:val] == "true"
			prod_id = Product.find_by(value: @product.value) 
			redirect_to static_path(prod_id.id)
		else
			redirect_to products_url
		end
	end

	private

	def product_params
		params.require(:product_attribute).permit(:name,:value,:size,:description)
	end
end
