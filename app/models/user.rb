class User < ApplicationRecord

  has_many :posts, dependent: :destroy
  has_many :events, through: :posts
  has_many :post_interests, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_secure_password

end
