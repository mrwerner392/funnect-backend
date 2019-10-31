class PostSerializer < ActiveModel::Serializer
  attributes :id, :day, :time_of_day, :description
  has_one :user
  has_one :topic
  has_one :neighborhood
end
