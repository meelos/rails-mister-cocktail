class CocktailsController < ApplicationController
  # set the cocktails variable to an object (array) contailing all rows of the cocktails table.
  def index
    @cocktails = Cocktail.all
  end

# set the cocktails variable to the Cocktails row object that matches the id of the current object passed by the view (or some other input via the route)
  def show
    @cocktail = Cocktail.find(params[:id])
  end

# initalises an new empty instance and saves it to the @cocktail variable. The form needs this so that the form can automatically generate the routes.
  def new
    @cocktail = Cocktail.new()
  end
#  
  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

# Looks for the row in the Cocktails table that matches the id of the current object being passed. Sets the @Cocktail variable to that object.
  def edit
    @cocktail = Cocktail.find(params[:id])
  end

# Looks for the row in the Cocktails table that matches the id of the current object being passed. Sets the @Cocktail variable to that object. Updates the parameters of that cocktail with those passed in cocktail_params. Redirects to the cocktail object path route.
  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

    # Looks for the row in the Cocktails table that matches the id of the current object being passed. Sets the @Cocktail variable to that object. Destroys the object.
  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy()
  end

  # defining a new method to whitelist what we are receiving back from the view form. (In this case, :name)
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
