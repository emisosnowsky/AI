class CustomersController < ApplicationController

	def signup
		@customer = Customer.new
	end

end