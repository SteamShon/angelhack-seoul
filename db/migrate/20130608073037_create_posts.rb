class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :theme_id
      t.integer :emotion_id
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
