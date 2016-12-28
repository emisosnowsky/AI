class Kategoria < ActiveRecord::Base
	has_many :produkts
	validates :nazwa_kategorii, presence: true, length: {minimum: 4, maximum: 200}
	validates :opis_kategorii, presence: true, length: {minimum: 4, maximum: 200}
	validates :obraz_kategorii, presence: true, length: {minimum: 4, maximum: 200}
end
