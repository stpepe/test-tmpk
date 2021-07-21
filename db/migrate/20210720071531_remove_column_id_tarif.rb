class RemoveColumnIdTarif < ActiveRecord::Migration[6.1]
  def change
    change_table :contracts do |t|
      t.remove :id_tarif
    end
  end
end
