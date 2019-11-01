class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(user_params)
    if user.valid?
      byebug
      interests = params[:interests]
      interests.each do |interest|
        UserInterest.create(user: user, interest: Interest.find_by(name: interest))
      end
      byebug
      render json: authentication_json(user.id)
    else
      render json: {errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:first_name, :username, :password, :age, :gender, :bio, :college, :occupation)
  end

end
