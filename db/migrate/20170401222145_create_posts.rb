class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
