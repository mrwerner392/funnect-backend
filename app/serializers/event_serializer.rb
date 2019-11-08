class EventSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :date, :time_hour, :time_minute, :time_am_pm, :status

  has_one :post
  has_one :user
  has_many :users_attending
  has_many :messages

end
