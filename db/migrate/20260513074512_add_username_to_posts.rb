class AddUsernameToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :username, :string
  end
end
