class BelongsToTarifs < ActiveRecord::Migration[6.1]
  def change
    change_table :contracts do |t|
      t.belongs_to :tarif
    end
  end
end
