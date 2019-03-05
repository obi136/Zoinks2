class AddColumnsToSalesAgentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :sales_agents, :username, :string
    add_column :sales_agents, :password_digest, :string
  end
end
