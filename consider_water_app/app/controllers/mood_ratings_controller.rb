class MoodRatingsController < ApplicationController

  def index
    @mood_ratings = MoodRating.all
  end

  def show
    @mood_rating = MoodRating.find(params[:id])
  end

  def new
    @mood_rating = MoodRating.create(mood_rating_params)
  end

  def create
    @mood_rating = MoodRating.create(mood_rating_params)
    redirect_to mood_ratings_path
  end
#don't know if I want to keep this function
  def edit
    @mood_rating = MoodRating.find(params[:id])
  end

  def update
    @mood_rating = MoodRating.find(params[:id])
    @mood_rating.update(mood_rating_params)
    #redirect_to ?
  end
#don't know if I want to keep this function
  def destroy
    @mood_rating = MoodRating.find(params[:id])
    @mood.destroy
    #redirect_to ?
  end

  def mood_rating_params
    params.require(:mood_rating).permit(:rating, :user, :id)
  end
end
