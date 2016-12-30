require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

	def setup
		@customer = Customer.new(login: "emilia123", email: "emilia123@example.com", password: "emilia123", name: "Emilia", lastname: "Kowalska", address: "Warszawa, ul. Wawelska 1/23", phone: 22345434567)
	end

	test "Customer should be valid" do
		assert @customer.valid?
	end

	test "name should be present" do
		@customer.name = " "
		assert_not @customer.valid?
	end

	test "name length should not be too long" do 
		@customer.name = "a" * 41
		assert_not @customer.valid?
	end 

	test "name length should not be too short" do 
		@customer.name = "a" * 2
		assert_not @customer.valid?
	end 

	test "login should be present" do
		@customer.login = " "
		assert_not @customer.valid?
	end

	test "login length should not be too long" do 
		@customer.login = "a" * 41
		assert_not @customer.valid?
	end 

	test "login length should not be too short" do 
		@customer.login = "a" * 2
		assert_not @customer.valid?
	end 

	test "email length should be within bounds" do
		@customer.email = "a" * 31 + "@gmail.com"
		assert_not @customer.valid?
	end

	test "email length should not be too long" do 
		@customer.email = "a" * 41
		assert_not @customer.valid?
	end 

	test "email length should not be too short" do 
		@customer.email = "a" * 2
		assert_not @customer.valid?
	end 

	test "email should be present" do
		@customer.email = " "
		assert_not @customer.valid?
	end

	test "email validation should accept valid addresses" do
		valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@gmail.com first.last@eem.au laura+joe@monk.cm example@example.pl]
		valid_addresses.each do |va|
			@customer.email = va
			assert @customer.valid?, '#{va.inspect} should be valid'
		end
	end

	test "email validation should reject valid addresses" do
		invalid_addresses = %w[user@gmail,com uset_at_ee.org user.name@gmail. eee@i_am_.com foo@ee+aar.com user@@user]
		invalid_addresses.each do |ia|
			@customer.email = ia
			assert_not @customer.valid?, '#{ia.inspect} should be invalid'
		end
	end

	test "lastname should be present" do
		@customer.lastname = " "
		assert_not @customer.valid?
	end

	test "lastname length should not be too long" do 
		@customer.lastname = "a" * 41
		assert_not @customer.valid?
	end 

	test "lastname length should not be too short" do 
		@customer.lastname = "a" * 2
		assert_not @customer.valid?
	end 

	test "password should be present" do
		@customer.password = " "
		assert_not @customer.valid?
	end

	test "password length should not be too long" do 
		@customer.password = "a" * 41
		assert_not @customer.valid?
	end 

	test "password length should not be too short" do 
		@customer.password = "a" * 2
		assert_not @customer.valid?
	end 

	test "address should be present" do
		@customer.address = " "
		assert_not @customer.valid?
	end

	test "address length should not be too long" do 
		@customer.address = "a" * 201
		assert_not @customer.valid?
	end 

	test "address length should not be too short" do 
		@customer.address = "a" * 2
		assert_not @customer.valid?
	end 
	
end