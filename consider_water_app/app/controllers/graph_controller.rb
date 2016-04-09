class GraphController < ApplicationController
  def index
    current_user
    @mood_ratings = User.find(session[:current_user_id]).mood_ratings
    # this renders json instead of the expected view...hrmmm
    # on the path to d3 graphing
    #render json: @mood_ratings
  end


  def data
    current_user
    @array = [1,2,3,4,5,6,7,8,9,10]

    @mood_charting = User.find(session[:current_user_id]).mood_ratings
    respond_to do |format|
      format.json {
        render :json => @mood_charting

        # renders [object Object]
        #render :json => @mood_ratings

      }
    end
  end
end
