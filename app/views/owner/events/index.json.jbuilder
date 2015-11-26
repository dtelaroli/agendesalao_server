json.array!(@events) do |event|
  json.extract! event, :id, :owner_id, :user_id, :email, :tel, :invite, :event_date, :estimated_time
  json.url event_url(event, format: :json)
end
