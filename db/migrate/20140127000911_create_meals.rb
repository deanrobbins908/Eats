class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.string :location
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
   
  end
end
