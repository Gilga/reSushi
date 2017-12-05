class CreateRezepts < ActiveRecord::Migration[5.1]
  def change
    create_table :rezepts do |t|
      t.integer :rezept_id
      t.string :rezept_name
      t.text :rezept_bemerkung

      t.timestamps
    end
  end
end
