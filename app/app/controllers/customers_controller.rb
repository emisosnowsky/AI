class CustomersController < ApplicationController
	before_action :set_customer, only: [:edit, :update, :show]
	before_action :require_same_customer, only: [:edit, :update]

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
			session[:customer_id] = @customer.id
			redirect_to products_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @customer.update(customer_params)
			flash[:success] = "Twój profil zostal edytowany pomyślnie"
			redirect_to customer_path(@customer)
		else 
			render 'edit'
		end
	end

	def show
	end

	private 

		def customer_params
			params.require(:customer).permit(:login, :email, :password, :name, :lastname, :address, :phone)
		end

		def set_customer
			@customer = Customer.find(params[:id])
		end

	def require_same_customer
		if current_customer != @customer
			flash[:danger] = "Uwaga, możesz edytować tylko swój profil."
			redirect_to home_path
		end
	end



end