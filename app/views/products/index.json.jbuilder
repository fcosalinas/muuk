json.array!(@products) do |product|
  json.extract! product, :title, :description, :price, :album_id
  json.url product_url(product, format: :json)
end
