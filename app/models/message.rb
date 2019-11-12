class Message < ApplicationRecord

  belongs_to :user
  belongs_to :event

  def sender
    self.user.first_name
  end

  def message_for_broadcast
    {
      id: self.id,
      content: self.content,
      sender: self.sender
    }
  end

end
