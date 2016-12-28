class Klient < ActiveRecord::Base
	validates :imie, presence: true, length: {minimum: 5, maximum: 40}
	validates :login, presence: true, length: {minimum: 5, maximum: 40}
	validates :email, presence: true, length: {minimum: 5, maximum: 40}
	validates :nazwisko, presence: true, length: {minimum: 5, maximum: 40}
	validates :password, presence: true, length: {minimum: 5, maximum: 40}
	validates :miejscowosc, presence: true, length: {minimum: 5, maximum: 40}
	validates :kraj, presence: true, length: {minimum: 5, maximum: 40}
	validates :ulica, presence: true, length: {minimum: 5, maximum: 40}
	validates :poczta, presence: true, length: {minimum: 5, maximum: 40}

	has_many :zamowienies

end