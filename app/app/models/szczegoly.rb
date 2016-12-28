class Szczegoly < ActiveRecord::Base
	has_many :produkts
	has_one :zamowienie
end