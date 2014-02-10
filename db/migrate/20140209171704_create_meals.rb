class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.string :content
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
    add_index :meals, [:user_id, :created_at]
  end
end
