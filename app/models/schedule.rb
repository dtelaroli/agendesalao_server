class Schedule < ActiveRecord::Base
  belongs_to :owner

  validates :day, :start, :end, :startLunch, :endLunch, 
    :startBreak, :endBreak, :owner, presence: true
end
