json.array!(@sales) do |sale|
  json.extract! sale, :seller_user_id, :buyer_user_id, :product_id, :quantity
  json.url sale_url(sale, format: :json)
end
