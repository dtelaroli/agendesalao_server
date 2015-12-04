json.array!(@owners) do |owner|
  json.extract! owner, :id, :email, :name, :image
  json.profile owner.profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state
end