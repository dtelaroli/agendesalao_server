class Profile < ActiveRecord::Base
  has_one :owner, autosave: true

  accepts_nested_attributes_for :owner

  validates :name, :description, :cpf, :mobile, :zipcode, :address, 
    :number, :neighborhood, :city, :state, presence: true
end
