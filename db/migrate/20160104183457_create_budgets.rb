class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.references :account, index: true, foreign_key: true
      t.string :name
      t.boolean :reccurrent
      t.integer :recurrent_in_days

      t.timestamps
    end
  end
end
