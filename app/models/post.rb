class Post < ApplicationRecord
  belongs_to :user
  validates :username, :email, :password, presence: true
end
