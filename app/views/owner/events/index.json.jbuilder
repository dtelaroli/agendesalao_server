json.array!(@events) do |event|
  json.extract! event, :id, :owner_id, :client_id, :client, :invite, :start, :estimated_time, :end, :title
end
