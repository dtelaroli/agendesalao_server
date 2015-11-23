json.extract! @profile, :id, :name, :cpf, :description, :mobile, :zipcode, :address, :number, :complement, :neighborhood, :city, :state, :created_at, :updated_at
json.owner current_owner, :id, :email, :name, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end
