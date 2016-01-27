class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.integer :ammount
      t.boolean :recurrent
      t.date :recurrent_start_date
      t.integer :recurrent_days
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
