class PostsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "posts_channel"
  end

  def unsubscribed
    raise NotImplementedError
  end
end
