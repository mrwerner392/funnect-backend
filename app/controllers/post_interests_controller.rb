class PostInterestsController < ApplicationController

  def create
    is_right_user?(params[:user_id])
    post_interest = PostInterest.find_by(post_id: params[:post_id], user_id: params[:user_id])
    if post_interest
      post_interest.destroy
      post = Post.find(params[:post_id])
      render json: post, include: '**'
    else
      post_interest = PostInterest.create(post_id: params[:post_id], user_id: params[:user_id])
      if post_interest.valid?
        post = Post.find(params[:post_id])
        render json: post, include: '**'
      else
        render json: {errors: post_interest.errors.full_messages}
      end
    end
  end
end
