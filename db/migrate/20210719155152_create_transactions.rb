class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.bigint :id_contract
      t.integer :money
      t.datetime :datetrans
      t.string :nachspis


      t.timestamps
    end
  end
end
