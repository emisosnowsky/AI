class AddUnitPriceAndTotalToDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :details, :unit_price, :decimal
    add_column :details, :total, :decimal
  end
end
