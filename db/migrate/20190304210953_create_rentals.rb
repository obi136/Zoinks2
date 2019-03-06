class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :review
      t.datetime :pick_up
      t.datetime :drop_off
      t.integer :total_price
      t.integer :car_id
      t.integer :user_id

      t.timestamps
    end
  end
end
