json.array!(@founding_sources) do |founding_source|
  json.extract! founding_source, :id, :account_id, :name, :balance
  json.url founding_source_url(founding_source, format: :json)
end
