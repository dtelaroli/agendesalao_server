class Profile < ActiveRecord::Base
  has_one :owner
  has_one :client

  validates :name, :description, :cpf, :mobile, :zipcode, :address, 
    :number, :neighborhood, :city, :state, presence: true
end
