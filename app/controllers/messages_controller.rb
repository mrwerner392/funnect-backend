class MessagesController < ApplicationController

  def create
    is_right_user?(params[:user_id])
    event = Event.find(params[:event_id])
    message = Message.create(user_id: params[:user_id], event: event, content: params[:content])
    if message.valid?
      EventChatsChannel.broadcast_to(event, {message: MessageSerializer.new(message)})
      render json: message
    else
      render json: {errors: message.errors.full_messages}, status: 422
    end
  end

end
