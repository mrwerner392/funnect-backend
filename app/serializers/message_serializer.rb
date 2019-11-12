class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :sender
end
