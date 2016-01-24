class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :account, index: true, foreign_key: true
      t.integer :amount
      t.string :concept
      t.date :account_date

      t.timestamps
    end
  end
end
