class CreateOnduleurEnergies < ActiveRecord::Migration[5.0]
  def change
    create_table :onduleur_energies do |t|
      t.integer :onduleur_id
      t.datetime :date
      t.float :energy

      t.timestamps
    end
  end
end
