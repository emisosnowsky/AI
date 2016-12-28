class DodajIdKategoriiToProdukt < ActiveRecord::Migration[5.0]
  def change
  	add_column :produkts, :id_kategorii, :integer
  end
end
