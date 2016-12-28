class CreateZamowienie < ActiveRecord::Migration
  def change
    create_table :zamowienies do |t|
    	t.string  :nr_zamowienia 
    	t.integer :id_zamowienia
    	t.timestamps
    end
  end
end
