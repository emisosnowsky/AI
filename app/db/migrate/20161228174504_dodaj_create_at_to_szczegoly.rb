class DodajCreateAtToSzczegoly < ActiveRecord::Migration[5.0]
  def change
  	add_column :szczegolies, :create_at, :integer
  end
end
