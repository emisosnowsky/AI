class CreateCustomer < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
    	t.string :login, :email, :password, :name, :lastname, :address
    	t.integer :phone
    	t.timestamps
    end
  end
end
