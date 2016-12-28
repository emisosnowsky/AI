class Zamowienie < ActiveRecord::Base
	belongs_to :klient
	has_one :szczegoly
	has_one :platnosc
end