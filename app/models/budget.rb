class Budget < ApplicationRecord
  belongs_to :account, dependent: :destroy

  def self.planed_expense
    sum(:planed_balance)
  end
end
