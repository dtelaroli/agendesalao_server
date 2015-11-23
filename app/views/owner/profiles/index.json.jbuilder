json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state
  json.url owner_profile_url(profile, format: :json)
  json.owner profile.owner, :id, :email, :name, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end
end
