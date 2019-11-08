class Post < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  belongs_to :neighborhood
  has_one :event, dependent: :destroy
  has_many :post_interests, dependent: :destroy
  has_many :interested_users, through: :post_interests, source: :user

  validates :date, :time_of_day, :description, presence: :true
  validates :description, length: { maximum: 200 }
  validates :time_of_day, length: { maximum: 100 }

  def self.filter_available(user)
    available_posts = Post.where.not(user: user)
    available_posts.filter { |post| !post.interested_users.include?(user)}
  end

  def status
    self.date < Date.today ? 'past' : 'active'
  end

end
