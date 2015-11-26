class Event < ActiveRecord::Base
  belongs_to :owner
  belongs_to :user

  validates :owner, :start, :estimated_time, presence: true

  def end
    start + estimated_time.seconds_since_midnight
  end

  def title
    "#{name} (#{client})"
  end
end
