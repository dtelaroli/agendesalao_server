class Owner < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  belongs_to :profile
  has_many :schedules
end
