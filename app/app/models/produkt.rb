class Produkt < ActiveRecord::Base
	belongs_to :kategoria
	belongs_to :szczegoly
end