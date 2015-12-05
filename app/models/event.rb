class Event < ActiveRecord::Base
  belongs_to :owner
  belongs_to :client

  validates :owner_id, :start, :estimated_time, presence: true
  validates :start, uniqueness: {scope: :client}

  def end
    start + estimated_time.seconds_since_midnight
  end

  def title
    "#{name} (#{email_or_mob})"
  end
end
