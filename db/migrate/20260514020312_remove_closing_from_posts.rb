class RemoveClosingFromPosts < ActiveRecord::Migration[8.1]
  def change
    remove_column :posts, :closing, :string
  end
end
