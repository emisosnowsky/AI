class CreateSzczegoly < ActiveRecord::Migration
  def change
    create_table :szczegolies do |t|
    	t.integer :ilosc_produktow, :cena_calkowita
    	t.string :waluta
    end
  end
end
