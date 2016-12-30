class AddProductIdToDetails < ActiveRecord::Migration[5.0]
  def change
  		add_column :details, :product_id, :integer
  end
end
