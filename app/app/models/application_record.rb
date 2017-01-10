class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  protect_from_forgery with: exception
  before_action :authorize
  protected
  def authorize 
  	unless Customer.find_by(id: session[:customer_id])
  		redirect_to login_path, notice:"Próbujesz się dostać bez pozwolenia?"
end
