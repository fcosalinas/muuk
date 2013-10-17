json.array!(@messages) do |message|
  json.extract! message, :senderUser_id, :recieverUser_id, :content
  json.url message_url(message, format: :json)
end
