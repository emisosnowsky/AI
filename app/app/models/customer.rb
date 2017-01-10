class Customer < ActiveRecord::Base
	has_secure_password
	has_many :orders
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {minimum: 3, maximum: 40}
	validates :login, presence: true, length: {minimum: 3, maximum: 40}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
		
	validates :email, presence: true, length: {minimum: 3, maximum: 40}, 								uniqueness: {case_sensitive: false},
									format: {with: VALID_EMAIL_REGEX}
	validates :lastname, presence: true, length: {minimum: 3, maximum: 40}
	validates :password, presence: true, length: {minimum: 3, maximum: 40}
	validates :address, presence: true, length: {minimum: 3, maximum: 200}

	mount_uploader :picture, PictureUploader
	validate :picture_size

	private 
		def picture_size
			if picture_size > 5.megabytes
				errors.add(:picture, "should be less than 5MB")
			end
		end
end