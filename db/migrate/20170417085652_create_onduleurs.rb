class CreateOnduleurs < ActiveRecord::Migration[5.0]
  def change
    create_table :onduleurs do |t|
      t.string :lb
      t.text :description

      t.timestamps
    end
  end
end
