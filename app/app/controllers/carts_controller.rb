class CartsController < ApplicationController

	def show 
		@detail = Detail.find(params[:id])
	end

	def index
		@orders = Order.all	
	end
	
	def new 
		@order = Order.new
	end
end