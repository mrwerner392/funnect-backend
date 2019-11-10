class EventChatsChannel < ApplicationCable::Channel
  def subscribed
    event = Event.find(params[:event_id])
    stream_for event
  end

  def unsubscribed
    raise NotImplementedError
  end
end
