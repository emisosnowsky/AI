class Szczegoly < ActiveRecord::Base
	has_many :produkts
	belongs_to :zamowienie
end