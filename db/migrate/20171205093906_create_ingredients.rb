class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.integer :ingredient_id
      t.string :ingredient_name
      t.text :ingredient_description

      t.timestamps
    end
  end
end
