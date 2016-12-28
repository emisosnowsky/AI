class Zamowienie < ActiveRecord::Base
	belongs_to :klient
	belongs_to :szczegoly
	belongs_to :platnosc
end