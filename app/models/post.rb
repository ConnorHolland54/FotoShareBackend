class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  scope :order_by_most_recent, -> {order('created_at DESC')}
end
