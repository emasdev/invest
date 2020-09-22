class AddUserForeignKeyToGroupsAndTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :user_id, :integer
    add_index :groups, :user_id
    add_column :transactions, :user_id, :integer
  	add_index :transactions, :user_id
  end
end
