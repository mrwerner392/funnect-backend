class Event < ApplicationRecord

  belongs_to :user
  belongs_to :post
  has_many :messages, dependent: :destroy
  has_many :event_attendees, dependent: :destroy
  has_many :attended_by_users, through: :event_attendees, source: :user

end
