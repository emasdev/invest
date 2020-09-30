class AddGoalToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :goal, :decimal
  end
end
