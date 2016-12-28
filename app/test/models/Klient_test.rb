require 'test_helper'

class KlientTest < ActiveSupport::TestCase

	def setup
		@klient = Klient.new(login: "robot123", email: "emi094@gmail.com", password: "superpassword",imie: "Kasia", nazwisko: "Kowalska", miejscowosc: "Warszawa", ulica: "Krotka", poczta: "Warszawa", kraj: "Polska", nr_telefonu: 22222222, nr_domu: 22, nr_mieszkania: 22)
	end

	test "Klient should be valid" do
		assert @klient.valid?
	end

	test "imie should be present" do
		@klient.imie = " "
		assert_not @klient.valid?
	end

	test "login should be present" do
		@klient.login = " "
		assert_not @klient.valid?
	end

	test "imie length should not be too long" do 
		@klient.imie = "a" * 41
		assert_not @klient.valid?
	end 

	test "imie length should not be too short" do 
		@klient.imie = "a" * 4
		assert_not @klient.valid?
	end 

	test "login length should not be too long" do 
		@klient.login = "a" * 41
		assert_not @klient.valid?
	end 

	test "login length should not be too short" do 
		@klient.login = "a" * 4
		assert_not @klient.valid?
	end 

	test "email length should not be too long" do 
		@klient.email = "a" * 41
		assert_not @klient.valid?
	end 

	test "email length should not be too short" do 
		@klient.email = "a" * 4
		assert_not @klient.valid?
	end 

	test "email should be present" do
		@klient.email = " "
		assert_not @klient.valid?
	end

	test "nazwisko should be present" do
		@klient.nazwisko = " "
		assert_not @klient.valid?
	end

	test "nazwisko length should not be too long" do 
		@klient.nazwisko = "a" * 41
		assert_not @klient.valid?
	end 

	test "nazwisko length should not be too short" do 
		@klient.nazwisko = "a" * 4
		assert_not @klient.valid?
	end 

	test "password should be present" do
		@klient.password = " "
		assert_not @klient.valid?
	end

	test "password length should not be too long" do 
		@klient.password = "a" * 41
		assert_not @klient.valid?
	end 

	test "password length should not be too short" do 
		@klient.password = "a" * 4
		assert_not @klient.valid?
	end 

	test "miejscowosc should be present" do
		@klient.miejscowosc = " "
		assert_not @klient.valid?
	end

	test "miejscowosc length should not be too long" do 
		@klient.miejscowosc = "a" * 41
		assert_not @klient.valid?
	end 

	test "miejscowosc length should not be too short" do 
		@klient.miejscowosc = "a" * 4
		assert_not @klient.valid?
	end 

	test "kraj should be present" do
		@klient.kraj = " "
		assert_not @klient.valid?
	end

	test "kraj length should not be too long" do 
		@klient.kraj = "a" * 41
		assert_not @klient.valid?
	end 

	test "kraj length should not be too short" do 
		@klient.kraj = "a" * 4
		assert_not @klient.valid?
	end 

	test "ulica should be present" do
		@klient.ulica = " "
		assert_not @klient.valid?
	end

	test "ulica length should not be too long" do 
		@klient.ulica = "a" * 41
		assert_not @klient.valid?
	end 

	test "ulica length should not be too short" do 
		@klient.ulica = "a" * 4
		assert_not @klient.valid?
	end 

	test "poczta should be present" do
		@klient.poczta = " "
		assert_not @klient.valid?
	end

	test "poczta length should not be too long" do 
		@klient.poczta = "a" * 41
		assert_not @klient.valid?
	end 

	test "poczta length should not be too short" do 
		@klient.poczta = "a" * 4
		assert_not @klient.valid?
	end 


end
