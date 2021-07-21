class AddBigintIntoContracts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contracts, :id_tarif
    add_column :contracts, :id_tarif, :bigint
  end
end
