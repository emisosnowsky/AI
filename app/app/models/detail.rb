class Detail < ActiveRecord::Base
	belongs_to :order
	belongs_to :product

	validates :order_amount, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :product_id, presence: true
	validates :order_id, presence: true

	before_save :finalize
	
	def unit_price
		if persisted?
			self[:unit_price]
		else
		product.product_price
		end
	end

	def total
		unit_price * order_amount
	end

	private

	def product_present
		if product.nil?
			error.add(:product, "Wystąpił błąd")
		end
	end

	def order_present
		if order.nil?
			error.add(:order, "Zamówienie jest błędne")
		end
	end

	def finalize
		self[:unit_price] = unit_price
		self[:total] = order_amount * self[:total] 
	end


end