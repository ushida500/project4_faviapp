class FavoritesController < ApplicationController
  
  def home 
    # redirect_to root_path unless logged_in?
  end
  
  def index
    @favorites = Favorite.all
  end

  def show
  end

  def new
    @favorite = Favorite.new 
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    p current_user
    if @favorite.save
      redirect_to favorites_path
    else
      redirect_to new_favorite_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @favorite = favorite.find(params[:id])
    if @favorite.destroy
      redirect_to root_path
      flash[:alert] = "Favorite deleted"
    end
  end

  private
  def favorite_params
    params.require(:favorite).permit(:title, :description, :url)
  end
end


