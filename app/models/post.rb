class Post < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  belongs_to :neighborhood
  has_one :event, dependent: :destroy
  has_many :post_interests, dependent: :destroy
  has_many :interested_users, through: :post_interests, source: :user

  def self.filter_available(user)
    available_posts = Post.where.not(user: user)
    available_posts.filter { |post| !post.interested_users.include?(user)}
  end

  def is_past
    self.date < Date.today
  end

end
