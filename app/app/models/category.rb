class Category < ActiveRecord::Base
	has_many :products
	validates :category_name, presence: true, length: {minimum: 4, maximum: 200}
	validates :category_descript, presence: true, length: {minimum: 4, maximum: 200}

	
end