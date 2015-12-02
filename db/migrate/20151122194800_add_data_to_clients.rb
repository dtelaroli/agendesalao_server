class AddDataToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :profile, index: true, foreign_key: true
  end
end