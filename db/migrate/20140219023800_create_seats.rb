class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :reservation_id

      t.timestamps
    end
  end
end
