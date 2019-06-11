class PlacesController < ApplicationController
  def index
    @places = Place.all(page: params[:index], per_page: 10)

  end

  def new
     @place = Place.new
  end

end
