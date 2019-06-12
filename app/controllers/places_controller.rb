class PlacesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update]

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


   if @place.user != current_user
    return render plain: 'Not Allowed', status: :forbidden
  end
  
 end

# when you select the update button, this executes
 def update
    @place = Place.find(params[:id])
    if @place.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
  @place.update_attributes(place_params)
  redirect_to root_path
 end


 def destroy 
  @place = Place.find(params[:id])
  @place.destroy
  redirect_to root_path
 end

private




  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end

  
