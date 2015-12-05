class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :description
      t.string :cpf
      t.string :mobile
      t.string :zipcode
      t.string :address
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.boolean :private, null: false, default: false

      t.timestamps null: false
    end
  end
end
