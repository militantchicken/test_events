json.array!(@events) do |event|
  json.extract! event, :id, :subscription_id, :title, :description, :mod, :event_start, :event_end
  json.url event_url(event, format: :json)
end
