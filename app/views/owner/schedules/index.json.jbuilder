json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :day, :start, :end, :startLunch, :endLunch, :startBreak, :endBreak, :owner_id
  json.url owner_schedule_url(schedule, format: :json)
end
