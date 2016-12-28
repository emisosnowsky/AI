class CreateKategoria < ActiveRecord::Migration
  def change
    create_table :kategoria do |t|
    	t.string :nazwa_kategorii, :opis_kategorii, :obraz_kategorii
    end
  end
end
