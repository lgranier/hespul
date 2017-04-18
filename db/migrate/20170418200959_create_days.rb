class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :onduleur_id
      t.date :date
      t.float :energie

      t.timestamps
    end
  end
end
