class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :user_id
      t.string :title
      t.string :genre
      t.text :brief
      t.text :description

      t.timestamps null: false
    end
  end
end
