class CreateBoarders < ActiveRecord::Migration
  def change
    create_table :boarders do |t|

      t.string :board_title
      t.string :board_content
      t.timestamps null: true
    end
  end
end
