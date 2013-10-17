json.array!(@interests) do |interest|
  json.extract! interest, :user_id, :category_id
  json.url interest_url(interest, format: :json)
end
