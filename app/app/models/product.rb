class Product < ActiveRecord::Base
	belongs_to :category
	has_many :details
	has_many :orders, :through => :details

	validates :category_id, presence: true
	validates :product_code, presence: true, length: {minimum: 4, maximum: 40}
	validates :product_name, presence: true, length: {minimum: 4, maximum: 40}
	validates :product_descript, presence: true, length: {minimum: 4, maximum: 200}
	validates :product_price, presence: true
end