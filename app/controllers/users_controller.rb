class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_and_authorize_user, except: [:create]

  def create
    user = User.create(user_params_create)
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
    render json: @user
  end

  def update
    if @user.update(user_params_update)
      if params[:new_interests] != nil
        @user.user_interests.destroy_all
        params[:new_interests].each do |interest|
          user_interest = UserInterest.create(user: @user, interest: Interest.find_by(name: interest))
          if !user_interest.valid?
            render json: {errors: user_interest.errors.full_messages }, status: :unprocessable_entity
            return
          end
        end
      end
      render json: @user
    else
      render json: {errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def created_posts
    render json: @user.created_posts, include: '**'
  end

  def posts_interested_in
    render json: @user.posts_interested_in, include: '**'
  end

  def available_posts
    render json: @user.active_available_posts, include: '**'
    # render json: @user.available_posts, include: '**'
  end

  def created_events
    render json: @user.created_events, include: '**'
  end

  def events_attended
    render json: @user.events_attended, include: '**'
  end

  private

  def user_params_create
    params.permit(:first_name, :username, :password, :age, :gender, :bio, :college, :occupation)
  end

  def user_params_update
    params.permit(:first_name, :username, :age, :gender, :bio, :college, :occupation)
  end

  def find_and_authorize_user
    is_right_user?(params[:id])
    @user = User.find(params[:id])
  end

end
