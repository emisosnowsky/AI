class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)

		if @customer.save
			flash[:success] = "Rejestracja przebiegła pomyślnie. Jesteś zarejestrowany!"
			redirect_to products_path
		else
			render :new
		end
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])	
		if @customer.update(customer_params)
			flash[:success] = "Twój profil zostal edytowany pomyślnie"
			redirect_to products_path # TODO change to show chef page
		else 
			render 'edit'
		end
	end

	def show
		@customer = Customer.find(params[:id])
	end

	private 

		def customer_params
			params.require(:customer).permit(:login, :email, :password, :name, :lastname, :address, :phone)
		end

end