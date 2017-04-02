class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.integer :my_id
      t.string :my_title
      t.string :my_text
      t.timestamps null: false
    end
  end
end
