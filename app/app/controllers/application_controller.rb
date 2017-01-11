class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_customer, :logged_in?, :current_order


  def current_customer
  	@current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  def logged_in?
  	!!current_customer
  end

  def current_order
  		if !session[:order_id].nil?
  			Order.find(session[:order_id])
  		else
  			Order.new
  	  	end
  end

end
