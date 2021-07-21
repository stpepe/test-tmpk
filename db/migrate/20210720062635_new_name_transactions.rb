class NewNameTransactions < ActiveRecord::Migration[6.1]
  def change
    rename_table :transactions, :transes
  end
end
