class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(user_params)
    if user.valid?
      interests = params[:interests]
      interests.each do |interest|
        UserInterest.create(user: user, interest: Interest.find_by(name: interest))
      end
      render json: authentication_json(user.id)
    else
      render json: {errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    user_id = params[:id]
    if logged_in_user_id = user_id.to_i
      user = User.find(user_id)
      render json: user
    else
      render json: {error: 'You are not authorized'}, status: :unauthorized
    end
  end

  def created_posts
    user = User.find(params[:id])
    render json: user.created_posts
  end

  def posts_interested_in
    user = User.find(params[:id])
    render json: user.posts_interested_in
  end

  def available_posts
    user = User.find(params[:id])
    render json: user.available_posts
  end

  def created_events
    user = User.find(params[:id])
    render json: user.created_events
  end

  private

  def user_params
    params.permit(:first_name, :username, :password, :age, :gender, :bio, :college, :occupation)
  end

end
