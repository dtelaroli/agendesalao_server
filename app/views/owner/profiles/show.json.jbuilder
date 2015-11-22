json.extract! @profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state, :created_at, :updated_at
json.extract! @profile.owner, :id, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end
