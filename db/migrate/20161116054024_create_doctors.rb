class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
    	t.string :name
    	t.string :email
    	t.string :passwd
    	t.string :years_of_exp

      t.timestamps
    end
  end
end
