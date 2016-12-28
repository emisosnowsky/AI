class DodajIdProduktuToSzczegoly < ActiveRecord::Migration[5.0]
  def change
  	add_column :szczegolies, :id_produktu, :integer
  end
end
