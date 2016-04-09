class MoodRatingsController < ApplicationController

  def index
    current_user

    @mood_ratings = User.find(session[:current_user_id]).mood_ratings.order(created_at: :desc)
    # this renders json instead of the expected view...hrmmm
    # on the path to d3 graphing
    #render json: @mood_ratings

  end

  def show
    current_user
    @mood_rating = MoodRating.find(params[:id])
  end

  def new
    current_user
    @mood_rating = current_user.mood_ratings.new
  end

  def create
    @mood_rating =
    current_user.mood_ratings.build(mood_rating_params)

    if @mood_rating.save
      redirect_to user_mood_ratings_path(@mood_rating)
    else
      # some sort of error message?
    end
  end
#don't know if I want to keep this function
#would need to update it to be more like journal_entries
  def edit
    @mood_rating = MoodRating.find(params[:id])
  end

  def update
    @mood_rating = MoodRating.find(params[:id])
    @mood_rating.update(mood_rating_params)
    redirect_to user_mood_ratings_path
  end

#don't know if I want to keep this function
  def destroy
    @mood_rating = MoodRating.find(params[:id])
    @mood.destroy
    #redirect_to ?
  end

private
  def mood_rating_params
 params.require(:mood_rating).permit(:rating, :user, :user_id, :id)
  end

end
