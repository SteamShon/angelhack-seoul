class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
