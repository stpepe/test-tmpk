class AssotiationAllTables < ActiveRecord::Migration[6.1]
  def change
    change_table :adresses do |t|
      t.belongs_to :contract, index: { unique: true }
    end
    change_table :cashes do |t|
      t.belongs_to :contract, index: { unique: true} 
    end
    change_table :transes do |t|
      t.belongs_to :contract
    end
  end
end

