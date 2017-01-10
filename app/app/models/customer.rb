class Customer < ActiveRecord::Base
	has_many :orders
	before_save :encrypt_password
	validates :name, presence: true, length: {minimum: 3, maximum: 40}
	validates :login, presence: true, length: {minimum: 3, maximum: 40}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
		
	validates :email, presence: true, length: {minimum: 3, maximum: 40}, 								uniqueness: {case_sensitive: false},
									format: {with: VALID_EMAIL_REGEX}
	validates :lastname, presence: true, length: {minimum: 3, maximum: 40}
	validates :password, presence: true, length: {minimum: 3, maximum: 40}
	validates :address, presence: true, length: {minimum: 3, maximum: 200}

	def self.authenticate(email, password)
		if email.present? && password.present?
			if customer = Customer.find_by(email: email)
				if customer.valid_password?(password)
					customer
				end

			end
		end
	end

	def valid_password?(password)
		self.password == Digest::MD5.hexdigest(password)
	end



end