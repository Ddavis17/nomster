class PlacesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create]

  # shows all the places in the db(w/ the exception of our limit of 10)
  def index

    @places = Place.all

  end



# page to add a place
  def new

     @place = Place.new

  end


# button to create place and redirect to root page

  def create

    current_user.places.create(place_params)
    redirect_to root_path

  end

# the place to see indiv. places
  def show 
  @place = Place.find(params[:id])
  end
  
# page to edit an exsiting page
 def edit
   @place = Place.find(parmas[:id]) 
  
 end

# when you select the update button, this executes
 def update
  @place = Place.find(parmas[:id])
  @place.update_attributes(place_params)
  redirect_to root_path
 end


 def destory 
  @place = Place.find(params[:id])
  @place.destroy
  redirect_to root_path
 end

private




  place_params
    params.require(:place).permit(:name, :description, :address)
  end

  end
