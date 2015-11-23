class AddDataToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :mon, :boolean, default: false
    add_column :owners, :tue, :boolean, default: false
    add_column :owners, :wed, :boolean, default: false
    add_column :owners, :thu, :boolean, default: false
    add_column :owners, :fri, :boolean, default: false
    add_column :owners, :sat, :boolean, default: false
    add_column :owners, :sun, :boolean, default: false
    add_column :owners, :start, :time
    add_column :owners, :end, :time
  end
end