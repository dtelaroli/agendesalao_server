class AddDataToOwners < ActiveRecord::Migration
  def change
    add_reference :owners, :profile, index: true, foreign_key: true
    
    add_column :owners, :mon, :boolean, null: false, default: false
    add_column :owners, :tue, :boolean, null: false, default: false
    add_column :owners, :wed, :boolean, null: false, default: false
    add_column :owners, :thu, :boolean, null: false, default: false
    add_column :owners, :fri, :boolean, null: false, default: false
    add_column :owners, :sat, :boolean, null: false, default: false
    add_column :owners, :sun, :boolean, null: false, default: false
    add_column :owners, :start, :time
    add_column :owners, :end, :time
    add_column :owners, :time_per_client, :time
  end
end