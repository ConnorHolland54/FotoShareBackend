class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts
  scope :findUser, ->(uid) { where('uid = ?', uid)}

end
