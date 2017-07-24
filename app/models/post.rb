class Post < ApplicationRecord
  validates :username, presence: true
  validates :body, presence: true, length: {maximum: 140}
  default_scope ->  {order(created_at: :desc)}
end
