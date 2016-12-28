class CreatePlatnosc < ActiveRecord::Migration[5.0]
  def change
    create_table :platnoscs do |t|
    	t.string :typ_platnosci
    end
  end
end
