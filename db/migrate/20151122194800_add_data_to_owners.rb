class AddDataToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :mon, default: false, :boolean
    add_column :owners, :tue, default: false, :boolean
    add_column :owners, :wed, default: false, :boolean
    add_column :owners, :thu, default: false, :boolean
    add_column :owners, :fri, default: false, :boolean
    add_column :owners, :sat, default: false, :boolean
    add_column :owners, :sun, default: false, :boolean
    add_column :owners, :start, :time
    add_column :owners, :end, :time
  end
end
