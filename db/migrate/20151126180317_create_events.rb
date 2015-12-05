class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :owner, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.string :name
      t.string :email_or_mob
      t.string :invite
      t.datetime :start
      t.time :estimated_time
      t.boolean :confirmed, default: false

      t.timestamps null: false
    end
  end
end
