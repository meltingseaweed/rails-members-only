class Post < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  # validates :username, :email, :password, presence: true
end
