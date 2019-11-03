class MessagesController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    message = Message.Create(user_id: params[:user_id], event: event, content: params[:content])
    if message.valid?
      ActionCable.server.broadcast_to(event, {message: message)
      render json: message
    else
      render json: {errors: message.errors.full_messages}, status: 422
  end

end
