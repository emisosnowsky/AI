class DodajKlientIdToZamowienies < ActiveRecord::Migration
  def change
  	add_column :zamowienies, :klient_id, :integer
  end
end
