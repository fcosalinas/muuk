json.array!(@tags) do |tag|
  json.extract! tag, :content
  json.url tag_url(tag, format: :json)
end
