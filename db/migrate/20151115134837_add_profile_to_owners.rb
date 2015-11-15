class AddProfileToOwners < ActiveRecord::Migration
  def change
    add_reference :owners, :profile, index: true, foreign_key: true
  end
end
