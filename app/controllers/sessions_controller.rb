class SessionsController < ApplicationController
  def new

  end

  def create
      user = User.authenticate(params[:username])
      if user
      # session[:user_id] = user.id
      log_in user
      redirect_to root_url, :notice => 'logged in!'
    else
      flash.now[:alert] = 'user not found'
      render 'new'
    end
  end


  def destroy
    log_out
    redirect_to root_url, :notice => 'logged out'
  end
end
