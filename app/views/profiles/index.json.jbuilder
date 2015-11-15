json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state
  json.url profile_url(profile, format: :json)
end
