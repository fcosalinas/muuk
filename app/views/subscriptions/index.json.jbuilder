json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :user_follower_id, :user_following_id
  json.url subscription_url(subscription, format: :json)
end
