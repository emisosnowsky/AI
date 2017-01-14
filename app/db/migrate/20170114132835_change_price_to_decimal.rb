class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def self.up
    change_table :products do |t|
      t.change :product_price, :decimal
    end
  end
  def self.down
      change_table :products do |t|
        t.change :product_price, :string
    end
  end
end