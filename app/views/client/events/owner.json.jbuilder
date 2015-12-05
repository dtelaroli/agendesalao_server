json.array!(@events) do |event|
  json.extract! event, :id, :owner_id, :client_id, :email_or_mob, :invite, :start, :estimated_time, :end, :title, :confirmed
  json.owner event.owner, :id, :email, :name, :image
end
