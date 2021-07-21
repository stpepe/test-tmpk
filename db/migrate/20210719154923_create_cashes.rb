class CreateCashes < ActiveRecord::Migration[6.1]
  def change
    create_table :cashes do |t|
      t.bigint :id_contract
      t.integer :ammoney



      t.timestamps
    end
  end
end
