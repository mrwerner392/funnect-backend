class Post < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  belongs_to :neighborhood
  has_one :event, dependent: :destroy
  has_many :post_interests, dependent: :destroy
  has_many :interested_users, through: :post_interests, source: :user

end