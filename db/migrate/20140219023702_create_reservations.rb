class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :meal_id

      t.timestamps
    end
  end
end
