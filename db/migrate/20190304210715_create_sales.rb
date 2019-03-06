class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :sale_price
      t.integer :rent_price
      t.boolean :available
      t.string :image
      t.integer :user_id
      t.integer :car_id

      t.timestamps
    end
  end
end
