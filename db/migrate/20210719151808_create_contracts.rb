class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.string :username
      t.string :password
      t.string :face
      t.string :status
      t.integer :id_tarif
      t.datetime :startuse
      t.datetime :enduse
      
      

      t.timestamps
    end
  end
end
