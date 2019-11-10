class EventsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    event = Event.create(user_id: params[:user_id].to_i, post: post, description: post.description, date: post.date)
    if event.valid?
      params[:attendees].each do |attendee|
        EventAttendee.create(event: event, user_id: attendee)
      end
      ActionCable.server.broadcast('events_channel', event.event_for_broadcast)
      render json: event, include: '**'
    else
      render json: {errors: event.errors.full_messages}
    end
  end

  def show
    event = Event.find(params[:id])
    if event
      render json: event, include: '**'
    else
      render json: {errors: event.errors.full_messages}
    end
  end

end
