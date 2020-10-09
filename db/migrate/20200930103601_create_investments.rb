class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.string :name
      t.decimal :amount
      t.references :author, references: :users, index: true
      t.timestamps
    end
  end
end
