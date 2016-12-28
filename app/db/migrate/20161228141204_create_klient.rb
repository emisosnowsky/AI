class CreateKlient < ActiveRecord::Migration
  def change
    create_table :klients do |t|
    	t.string :login, :email, :password, :imie, :nazwisko, :miejscowosc, :ulica, :poczta, :kraj
    	t.integer :nr_telefonu, :nr_domu, :nr_mieszkania
    	t.timestamps
    end
  end
end
