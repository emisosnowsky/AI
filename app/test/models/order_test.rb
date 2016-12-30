require 'test_helper'

class OrderTest < ActiveSupport::TestCase

	def setup
		customer = Customer.create(login: "emi123", email: "emi1234@example.com", password: "emi123", name: "Emilia", lastname: "Kowalska", address: "Warszawa, ul. Wawelska 1/23", phone: 22345434567)
		@order = customer.orders.build(order_number: "1A_29_12_2016", totalprice: "25 PLN", payment_type: "Przelew Bankowy")
	end 

	test "customer_id should be present" do
		@order.customer_id = nil
		assert_not @order.valid?

	end

	test "Order should be valid" do
		assert @order.valid?
	end

	test "order_number should be present" do
		@order.order_number = " "
		assert_not @order.valid?
	end



	test "order_number length should not be too long" do 
		@order.order_number = "a" *41
		assert_not @order.valid?
	end 

	test "order_number length should not be too short" do 
		@order.order_number = "a" * 11
		assert_not @order.valid?
	end 

	test "totalprice should be present" do
		@order.totalprice = " "
		assert_not @order.valid?
	end

end