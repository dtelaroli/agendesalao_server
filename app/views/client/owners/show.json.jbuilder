json.extract! @owner, :id, :image, :email, :name, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end, :time_per_client
json.profile @owner.profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state, :created_at, :updated_at
json.events @owner.events do |event|
  json.extract! event, :id, :owner_id, :client_id, :client, :invite, :start, :estimated_time, :end, :title
  json.owner event.owner, :id, :email, :name, :image
end
