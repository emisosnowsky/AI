class DodajCenaProduktuToSzczegoly < ActiveRecord::Migration[5.0]
  def change
  	add_column :szczegolies, :cena_produktu, :integer
  end
end
