class RemoveColumnIdAll < ActiveRecord::Migration[6.1]
  def change
    change_table :adresses do |t|
      t.remove :id_contract
    end
    change_table :cashes do |t|
      t.remove :id_contract
    end
    change_table :transes do |t|
      t.remove :id_contract
    end
  end
end

