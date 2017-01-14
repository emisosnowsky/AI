class LoginsController < ApplicationController
#dodane
	def new
 
	end

	def create
		customer = Customer.find_by(email: params[:email])
		if customer && customer.authenticate(params[:password])
			session[:customer_id] = customer.id
			flash[:success] = "Zalogowałeś/aś się pomyślnie!"
			redirect_to products_path
		else
			flash.now[:danger] = "Twój adres email albo hasło jest błędne."
			render 'new'
		end
	end


	def destroy
		session[:customer_id] = nil
		flash[:success] = "Wylogowałes sie."
		redirect_to home_path
	end
end