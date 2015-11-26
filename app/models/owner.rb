class Owner < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  belongs_to :profile
  has_many :schedules

  validates :mon, :tue, :wed, :thu, :fri, :sat, :sun, :start, :end, :time_per_client, presence: true, on: :update
end
