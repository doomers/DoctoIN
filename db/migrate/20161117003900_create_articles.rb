class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
    	t.string :Topic
    	t.string :Description

    end
  end
end
