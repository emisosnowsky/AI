class SessionsController < ApplicationController
  
  def new
  end

  def create
    email, password = session_params.values_at(:email, :password)

  	if customer = Customer.authenticate(email, password)
      session[:customer_id] = customer.id
  		log_in customer
  		redirect_to home_path

  	else
    flash[:danger] = 'Niepoprawny email/haslo!'
  	render 'new'
      
	   end
  end

  def destroy
    session.delete(:customer_id)
    redirect_to products_path
  end

  protected 

  def session_params
      params.require(:session).permit(:email, :password)
    end

end
