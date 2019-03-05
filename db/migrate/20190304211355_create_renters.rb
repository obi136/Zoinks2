class CreateRenters < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
