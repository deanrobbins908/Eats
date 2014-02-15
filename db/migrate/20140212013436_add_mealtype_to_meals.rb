class AddMealtypeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :mealtype, :string
  end
end
