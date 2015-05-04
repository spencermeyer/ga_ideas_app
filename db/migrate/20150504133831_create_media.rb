class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :idea_id
      t.string :title
      t.text :content
      t.string :media_type

      t.timestamps null: false
    end
  end
end
