class UsersController < ApplicationController
  after_action :

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path 
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 

    redirect_to root_path
  end

  def index
    @users = User.all
    current_user = User.find_by_id(session[:current_user_id])
  end

  def show
    @user = User.find(params[:id])
  end



  private

  def user_params
    params.require(:user).permit(:name, :username)
  end

end
