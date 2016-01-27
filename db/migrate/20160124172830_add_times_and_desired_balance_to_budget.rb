class AddTimesAndDesiredBalanceToBudget < ActiveRecord::Migration[5.0]
  def change
    add_column :budgets, :planed_balance, :integer
    add_column :budgets, :start_date, :date
  end
end
