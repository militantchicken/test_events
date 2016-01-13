json.array!(@user_subs) do |user_sub|
  json.extract! user_sub, :id, :user_id, :subscription_id, :moderator
  json.url user_sub_url(user_sub, format: :json)
end
