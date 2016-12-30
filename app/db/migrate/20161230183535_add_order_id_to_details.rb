class AddOrderIdToDetails < ActiveRecord::Migration[5.0]
  def change
  	add_column :details, :order_id, :integer
  end
end
