class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_id
      t.integer :user_id
      t.integer :is_left

      t.timestamps null: false
    end
  end
end
