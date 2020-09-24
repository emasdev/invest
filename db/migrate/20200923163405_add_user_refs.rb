class AddUserRefs < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :user, column: :author_id
    add_reference :groups, :user
  end
end
