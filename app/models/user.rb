class User < ApplicationRecord

  has_many :created_posts, class_name: 'Post', dependent: :destroy
  has_many :created_events, class_name: 'Event', dependent: :destroy

  has_many :post_interests, dependent: :destroy
  has_many :posts_interested_in, through: :post_interests, source: :post

  has_many :event_attendees, dependent: :destroy
  has_many :events_attended, through: :event_attendees, source: :event

  has_many :messages, dependent: :destroy
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests

  has_secure_password

  validates :username, :age, :gender, presence: :true
  validates :username, uniqueness: :true
  validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 110 }
  validates :username, length: { minimum: 4, maximum: 16 }
  validates :first_name, :gender, :occupation, length: { maximum: 30 }
  validates :college, length: { maximum: 50 }
  validates :bio, length: { maximum: 200 }

  def available_posts
    Post.filter_available(self)
  end

  def active_available_posts
    self.available_posts.filter { |post| post.status == 'active' }
  end

  def available_posts_no_events
    self.active_available_posts.filter { |post| post.event == nil }
  end

end
