json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :title, :sub_user_count, :category_id, :description, :user_id
  json.url subscription_url(subscription, format: :json)
end
