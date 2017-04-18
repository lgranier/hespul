class CreateEnergies < ActiveRecord::Migration[5.0]
  def change
    create_table :energies do |t|
      t.integer :onduleur_id
      t.timestamp :date
      t.float :energie

      t.timestamps
    end
  end
end
