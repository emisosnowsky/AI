class Order < ActiveRecord::Base
	belongs_to :customer
	validates :customer_id, presence: true
	has_many :details
	has_many :products, :through => :details
	validates :order_number, presence: true, length: {minimum: 12, maximum: 40}
	validates :totalprice, presence: true

	before_save :update_totalprice

	def totalprice
		details.collect { |d| d.valid? ? (d.order_amount * d.unit_price) : 0 }.sum
	end

	private 

	def update_update_totalprice
		self["totalprice"] = totalprice
		
	end

end