json.array!(@events) do |event|
  json.extract! event, :id, :owner_id, :client_id, :email_or_mob, :invite, :start, :estimated_time, :end, :title
  json.owner event.owner, :id, :email, :name, :image
  json.profile event.owner.profile, :name
end
