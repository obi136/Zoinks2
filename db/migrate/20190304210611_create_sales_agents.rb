class CreateSalesAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_agents do |t|
      t.string :name

      t.timestamps
    end
  end
end
