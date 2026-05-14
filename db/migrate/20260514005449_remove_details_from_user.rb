class RemoveDetailsFromUser < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :email, :string
    remove_column :users, :password, :string
  end
end
