class SessionsController < ApplicationController


  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      #flash.now[:notice] = 'Invalid/username/password combination'
      render html: 'Invalid/username/password combination'
    #  redirect_to root_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
