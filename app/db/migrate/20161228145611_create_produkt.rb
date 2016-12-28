class CreateProdukt < ActiveRecord::Migration[5.0]
  def change
    create_table :produkts do |t|
    	t.string :kod_produktu, :nazwa_produktu, :obraz_produktu, :opis_produktu
    	t.integer :cena_produktu
    end
  end
end
