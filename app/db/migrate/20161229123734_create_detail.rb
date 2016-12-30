class CreateDetail < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
    	t.integer :order_amount
    end
  end
end
