class DropTablename < ActiveRecord::Migration
  def up
    drop_table :meals
  end

 
end
