class CreateCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
    	t.string :category_name, :category_descript
    end
  end
end
