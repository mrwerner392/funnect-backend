class EventSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :date, :time
  has_one :post
end
