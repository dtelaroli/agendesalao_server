json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state
  json.url client_profile_url(profile, format: :json)
  json.owner profile.owner, :id, :email, :name, :image, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end, :time_per_client
end
