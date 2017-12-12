class AddCommentToRezepts < ActiveRecord::Migration[5.1]
  def change
    add_column :rezepts, :zutat_id, :integer
  end
end
