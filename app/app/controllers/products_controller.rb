class ProductsController < ApplicationController

	def index
		@products = Product.all
		@details = current_order.details.new
	end

	def show
		@product = Product.find(params[:id])
	end
	
	def buy
	#	@product = Product.find(params[:id])

		flash[:success] = "Zakupiłeś produkt!"
		redirect_to products_path
	end

end