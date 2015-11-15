class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :start
      t.time :end
      t.time :startLunch
      t.time :endLunch
      t.time :startBreak
      t.time :endBreak
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
