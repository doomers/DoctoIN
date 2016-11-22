class AdddoctorsIdtoposts < ActiveRecord::Migration[5.0]
  def change
  	add_column :posts, :doctor_id, :integer
  end
end
