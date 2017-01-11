class DetailsController < ApplicationController

def create
	@order = current_order
	@detail = @order.details.new(detail_params)



private
	def detail_params
		param.require(:detail).permit(:order_amount, :product_id)