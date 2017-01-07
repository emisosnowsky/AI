class CustomersController < ApplicationController

	def signup
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)

		if @customer.save
			flash[:success] = "Rejestracja przebiegła pomyślnie. Jesteś zarejestrowany!"
			redirect_to home_path
		else
			render :new
		end
	end

	private 

		def customer_params
			params.require(:customer).permit(:login, :email, :password, :name, :lastname, :address, :phone)
		end


end