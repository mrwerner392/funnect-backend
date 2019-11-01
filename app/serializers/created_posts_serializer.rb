class CreatedPostsSerializer < ActiveModel::Serializer
  attributes :id, :date, :time_of_day, :description
  
  has_many :interested_users
  has_one :user
  has_one :topic
  has_one :neighborhood

end
