class AddCommentToRezepts < ActiveRecord::Migration[5.1]
  def change
    add_column :rezepts, :id, :integer
  end
end
