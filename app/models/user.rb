class User < ApplicationRecord
  has_many :post
  validates :title, :body, presence: true
end
