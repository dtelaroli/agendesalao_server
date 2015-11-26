class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :owner, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :email
      t.string :tel
      t.string :invite
      t.datetime :event_date
      t.time :estimated_time

      t.timestamps null: false
    end
  end
end
