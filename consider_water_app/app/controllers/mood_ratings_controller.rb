class MoodRatingsController < ApplicationController

  def index
    @mood_ratings = User.find(session[:current_user_id]).mood_ratings
  end

  def show
    @mood_rating = MoodRating.find(params[:id])
  end

  def new
    @mood_rating = MoodRating.new
    @users = User.all
  end

  def create
    @mood_rating = User.find(session[:current_user_id]).mood_ratings.build(mood_rating_params)
    redirect_to mood_ratings_path
    if @mood_rating.save
      #redirect_to mood_ratings_path(@mood_rating)
    else
      # some sort of error message?
    end
  end
#don't know if I want to keep this function
  def edit
    @mood_rating = MoodRating.find(params[:id])
  end

###hiting the update instead of create,
  def update
    @mood_rating = MoodRating.find(params[:id])
    @mood_rating.update(mood_rating_params)
    redirect_to mood_ratings_path
  end

#don't know if I want to keep this function
  def destroy
    @mood_rating = MoodRating.find(params[:id])
    @mood.destroy
    #redirect_to ?
  end

private
  def mood_rating_params
 params.require(:mood_rating).permit(:rating, :user , :id)
  end

end
