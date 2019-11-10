class Event < ApplicationRecord

  belongs_to :user
  belongs_to :post
  has_many :messages, dependent: :destroy
  has_many :event_attendees, dependent: :destroy
  has_many :users_attending, through: :event_attendees, source: :user

  def status
    self.date < Date.today ? 'past' : 'active'
  end

  def event_for_broadcast
    {
      id: self.id,
      post: self.post.post_for_broadcast,
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
      location: self.location,
      users_attending: self.users_attending,
      date: self.date,
      description: self.description,
      status: self.status,
      time_hour: self.time_hour,
      time_minute: self.time_minute,
      time_am_pm: self.time_am_pm
    }
  end

end
