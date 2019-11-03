class EventsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    event = Event.create(user_id: params[:user_id], post: post, description: post.description, date: post.date)
    if event.valid?
      params[:attendees].each do |attendee|
        EventAttendee.create(event: event, user: attendee)
      end
    render json: event
  end

end
