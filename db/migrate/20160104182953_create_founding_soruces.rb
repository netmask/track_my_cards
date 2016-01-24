class CreateFoundingSoruces < ActiveRecord::Migration[5.0]
  def change
    create_table :founding_soruces do |t|
      t.references :account, index: true, foreign_key: true
      t.string :name
      t.integer :balance

      t.timestamps
    end
  end
end
