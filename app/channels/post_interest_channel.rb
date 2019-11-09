class PostInterestChannel < ApplicationCable::Channel
  def subscribed
    post_interest = PostInterest.find_by(post_id: params[:post_id], user_id: params[:user_id])
    stream_for post_interest
  end

  def unsubscribed
    raise NotImplementedError
  end
end
