class CreateZutats < ActiveRecord::Migration[5.1]
  def change
    create_table :zutats do |t|
      t.string :zutat_name
      t.text :zutat_bemerkung
      t.integer :ernaehrungs_id

      t.timestamps
    end
  end
end
