class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts
  end

  def create
    date = params[:day] == 'Today' ? Date.today : Date.tomorrow
    post = Post.create(user_id: params[:id], topic_id: params[:topic], neighborhood_id: params[:neighborhood], description: params[:description], date: date, time_of_day: params[:time_of_day])
    if post.valid?
      ws_post = post_for_broadcast(post)
      return ActionCable.server.broadcast('posts_channel', ws_post)
      # sleep(0.2)
      # render json: post, include: '**'
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def show
    is_right_user?(params[:user_id])
    post = Post.find(params[:id])
    if post
      render json: post, include: '**'
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  private

  def post_for_broadcast(post)
    {
      id: post.id,
      user: {
        id: post.user.id,
        username: post.user.username,
        first_name: post.user.first_name,
        age: post.user.age,
        bio: post.user.bio,
        gender: post.user.gender,
        college: post.user.college,
        occupation: post.user.occupation,
        interests: post.user.interests,
      },
      topic: post.topic,
      neighborhood: post.neighborhood,
      interested_users: post.interested_users,
      date: post.date,
      description: post.description,
      status: post.status,
      time_of_day: post.time_of_day
    }
  end

end
