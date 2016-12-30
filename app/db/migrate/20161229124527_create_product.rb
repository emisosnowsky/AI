class CreateProduct < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :product_code, :product_name, :product_descript, :product_price, :product_image
    	t.integer :amount
    	t.timestamps
    end
  end
end
