class Order < ActiveRecord::Base
	belongs_to :customer
	validates :customer_id, presence: true
	has_many :details
	has_many :products, :through => :details
	validates :order_number, presence: true, length: {minimum: 12, maximum: 40}
	validates :totalprice, presence: true
end