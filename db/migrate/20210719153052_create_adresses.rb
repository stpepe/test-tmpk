class CreateAdresses < ActiveRecord::Migration[6.1]
  def change
    create_table :adresses do |t|
      t.bigint :id_contract
      t.string :city
      t.string :street
      t.string :house
      t.string :home

      t.timestamps
    end
  end
end
