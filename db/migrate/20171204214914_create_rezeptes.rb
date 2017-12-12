class CreateRezeptes < ActiveRecord::Migration[5.1]
  def change
    create_table :rezeptes do |t|
      t.integer :preis
      t.string :rezepte_name
      t.text :rezepte_bemerkung
      t.integer :zutat_id

      t.timestamps
    end
  end
end
