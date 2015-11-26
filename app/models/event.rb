class Event < ActiveRecord::Base
  belongs_to :owner
  belongs_to :user

  validates :owner, :date, :event_date, :estimated_time, presence: true
end
