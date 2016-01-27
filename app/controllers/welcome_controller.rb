class WelcomeController < ApplicationController
  def index
    @planed_expense = Budget.planed_expense
    @planed_income = Income.planed_by_month(Time.now.to_date)
  end
end
