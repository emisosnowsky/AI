class DodajIdZamowieniaToSzczegoly < ActiveRecord::Migration
  def change
  	add_column :szczegolies, :id_zamowienia, :integer
  end
end
