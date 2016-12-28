class DodajPlatnoscIdToZamowienies < ActiveRecord::Migration
  def change
  	add_column :zamowienies, :platnosc_id, :integer 
  end
end
