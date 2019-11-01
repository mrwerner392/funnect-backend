class InterestsController < ApplicationController
  skip_before_action :authorized

  def index
    interests = Interest.all
    render json: interests
  end

end
