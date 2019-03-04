class CreateCommissions < ActiveRecord::Migration[5.2]
  def change
    create_table :commissions do |t|
      t.integer :sales_agent_id
      t.integer :car_id

      t.timestamps
    end
  end
end
