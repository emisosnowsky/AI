class CartsController < ApplicationController

	def show 
		@details = current_order.details
	end

end