class CreateErnaehrungs < ActiveRecord::Migration[5.1]
  def change
    create_table :ernaehrungs do |t|
      t.string :ernaehrung_bez
      t.text :ernaehrung_bemerkung

      t.timestamps
    end
  end
end
