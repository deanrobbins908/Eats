class AddCityToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :city, :string
  end
end
