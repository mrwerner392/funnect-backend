class User < ApplicationRecord

  has_many :created_posts, class_name: 'Post', dependent: :destroy
  has_many :created_events, through: :posts, source: :event

  has_many :post_interests, dependent: :destroy
  has_many :posts_interested_in, through: :post_interests, source: :post

  has_many :event_attendees, dependent: :destroy
  has_many :events_attended, through: :event_attendees, source: :event

  has_many :messages, dependent: :destroy
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_secure_password

end
