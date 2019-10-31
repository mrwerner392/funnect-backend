class Post < ApplicationRecord

  belongs_to :creator, class_name: 'User'
  belongs_to :topic
  belongs_to :neighborhood
  has_one :event, dependent: :destroy
  has_many :post_interests, dependent: :destroy
  has_many :interested_users, through: :post_interests, source: :user

end
