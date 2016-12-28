require 'test_helper'

class KategoriaTest < ActiveSupport::TestCase

	def setup
		@kategoria = Kategoria.new(nazwa_kategorii: "kat1", opis_kategorii: "kat1 kategoria", obraz_kategorii: "kat1 obraz")
	end

	test "Kategoria should be valid" do
		assert @kategoria.valid?
	end

	test "nazwa_kategorii should be present" do
		@kategoria.nazwa_kategorii = " "
		assert_not @kategoria.valid?
	end

	test "nazwa_kategorii length should not be too long" do 
		@kategoria.nazwa_kategorii = "a" * 201
		assert_not @kategoria.valid?
	end 

	test "nazwa_kategorii length should not be too short" do 
		@kategoria.nazwa_kategorii = "a" * 3
		assert_not @kategoria.valid?
	end 

	test "opis_kategorii length should not be too long" do 
		@kategoria.opis_kategorii = "a" * 201
		assert_not @kategoria.valid?
	end 

	test "opis_kategorii length should not be too short" do 
		@kategoria.opis_kategorii = "a" * 3
		assert_not @kategoria.valid?
	end 

end