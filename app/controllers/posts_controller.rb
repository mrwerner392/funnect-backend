class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts
  end

  def create
    date = params[:day] == 'Today' ? Date.today : Date.tomorrow
    post = Post.create(user_id: params[:id], topic_id: params[:topic], neighborhood_id: params[:neighborhood], description: params[:description], date: date, time_of_day: params[:time_of_day])
    if post.valid?
      ActionCable.server.broadcast('posts_channel', post.post_for_broadcast)
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def show
    post = Post.find(params[:id])
    is_right_user?(post.user.id)
    if post
      render json: post, include: '**'
    else
      render json: {errors: post.errors.full_messages}
    end
  end

end
