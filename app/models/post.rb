class Post < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  belongs_to :neighborhood
  has_one :event, dependent: :destroy
  has_many :post_interests, dependent: :destroy
  has_many :interested_users, through: :post_interests, source: :user

  validates :date, :time_of_day, :description, presence: :true
  validates :description, length: { maximum: 100 }
  validates :time_of_day, length: { maximum: 50 }

  def self.filter_available(user)
    available_posts = Post.where.not(user: user)
    available_posts.filter { |post| !post.interested_users.include?(user)}
  end

  def status
    self.date < Date.today ? 'past' : 'active'
  end

  def today_or_tomorrow
    if self.date == Date.tomorrow
      return 'Tomorrow'
    elsif self.date == Date.today
      return 'Today'
    else
      return 'past'
    end
  end

  def post_for_broadcast
    {
      id: self.id,
      user: {
        id: self.user.id,
        username: self.user.username,
        first_name: self.user.first_name,
        age: self.user.age,
        bio: self.user.bio,
        gender: self.user.gender,
        college: self.user.college,
        occupation: self.user.occupation,
        interests: self.user.interests,
      },
      topic: self.topic,
      neighborhood: self.neighborhood,
      interested_users: self.interested_users,
      date: self.date,
      description: self.description,
      status: self.status,
      time_of_day: self.time_of_day
    }
  end

end
