require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	def setup
		@category = Category.new(category_name: "category1", category_descript: "category1")
	end

	test "Category should be valid" do
		assert @category.valid?
	end

	test "category_name should be present" do
		@category.category_name = " "
		assert_not @category.valid?
	end

	test "category_name length should not be too long" do 
		@category.category_name = "a" * 201
		assert_not @category.valid?
	end 

	test "category_name length should not be too short" do 
		@category.category_name = "a" * 3
		assert_not @category.valid?
	end 

	test "category_descript length should not be too long" do 
		@category.category_descript = "a" * 201
		assert_not @category.valid?
	end 

	test "category_descript length should not be too short" do 
		@category.category_descript = "a" * 3
		assert_not @category.valid?
	end 

	
	
end
