json.array!(@budgets) do |budget|
  json.extract! budget, :id, :name, :reccurrent, :recurrent_in_days
  json.url budget_url(budget, format: :json)
end
