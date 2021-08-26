class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
