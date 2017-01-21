class CartsController < ApplicationController

	def show 
		#@detail = Detail.find(params[:id])
		@order = Order.find(params[:id])
		@product = Product.find(params[:id])
	end

	def index

		@orders = Order.all	
		@products = current_order.products.new
		

	end
	
	def new 
		@order = Order.new
		flash[:success] = "Dodano produkt do koszyka!"
		redirect_to products_path
	end
	
	def create
		@product = Product.find(params[:id])
		@order = Order.new(order_params)
		if @order.save
			flash[:success] = "Utworzono zamówienie poprawnie."
			redirect_to products_path
		else
			render :new
		end
	end
	
	private 

	def order_params
		params.require(:order).permit(:order_number, :totalprice, :payment_type)
	end
	

end

