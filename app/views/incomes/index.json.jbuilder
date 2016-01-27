json.array!(@incomes) do |income|
  json.extract! income, :id, :ammount, :recurrent, :recurrent_start_date, :recurrent_days, :description, :name
  json.url income_url(income, format: :json)
end
