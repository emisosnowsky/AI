require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	def setup
		category = Category.create(category_name: "category2", category_descript: "category12")
		@product = category.products.build(product_code: "112233445566", product_name: "product1", product_descript: "product1", product_price: "25 PLN", product_image: "obraz1", amount: 1)
	end

	test "category_id should be present" do
		@product.category_id = nil
		assert_not @product.valid?

	end

	test "Product should be valid" do
		assert @product.valid?
	end

	test "product_code should be present" do
		@product.product_code = " "
		assert_not @product.valid?
	end

	test "product_code length should not be too long" do 
		@product.product_code = "a" *41
		assert_not @product.valid?
	end 

	test "product_code length should not be too short" do 
		@product.product_code = "a" * 3
		assert_not @product.valid?
	end 

	test "product_name should be present" do
		@product.product_name = " "
		assert_not @product.valid?
	end

	test "product_name length should not be too long" do 
		@product.product_name = "a" *41
		assert_not @product.valid?
	end 

	test "product_name length should not be too short" do 
		@product.product_name = "a" * 3
		assert_not @product.valid?
	end 

	test "product_descript should be present" do
		@product.product_descript = " "
		assert_not @product.valid?
	end

	test "product_descript length should not be too long" do 
		@product.product_descript = "a" *201
		assert_not @product.valid?
	end 

	test "product_descript length should not be too short" do 
		@product.product_descript = "a" * 3
		assert_not @product.valid?
	end 

	test "product_price should be present" do
		@product.product_price = " "
		assert_not @product.valid?
	end
	
end
