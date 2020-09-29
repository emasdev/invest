class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount
      t.timestamps
    end

    create_table :groups_investments, id: false do |t|
      t.belongs_to :groups
      t.belongs_to :investments
    end
  end
end
