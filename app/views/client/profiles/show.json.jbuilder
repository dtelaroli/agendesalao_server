json.extract! @profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state, :created_at, :updated_at
json.client current_client, :id, :email, :name
