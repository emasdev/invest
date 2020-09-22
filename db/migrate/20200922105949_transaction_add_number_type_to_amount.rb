class TransactionAddNumberTypeToAmount < ActiveRecord::Migration[6.0]
  def change
    change_column :transactions, :amount, 'numeric USING CAST(amount AS numeric)'
  end
end
