class PostSerializer < ActiveModel::Serializer
  attributes :id, :date, :time_of_day, :description, :status, :today_or_tomorrow

  has_one :user
  has_one :topic
  has_one :neighborhood
  has_many :interested_users

end
