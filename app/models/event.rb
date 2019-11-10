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
    self
  end

end
