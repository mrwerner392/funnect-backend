class NeighborhoodsController < ApplicationController

  def index
    neighborhoods = Neighborhood.all
    render json: neighborhoods
  end

end
