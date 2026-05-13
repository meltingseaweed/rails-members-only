class AddDetailsToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
    add_column :posts, :closing, :string
  end
end
