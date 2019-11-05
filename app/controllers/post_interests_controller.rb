class PostInterestsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    post_interest = PostInterest.create(post: post, user_id: params[:user_id])
    if post_interest.valid?
      render json: post
    else
      render json: {errors: post_interest.errors.full_messages}
    end
  end

  def destroy
    post_interest = PostInterest.find(params[:id])
    post_interest.destroy
    render json: {}
  end

end
