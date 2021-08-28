class EventsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def new
    @event = current_user.created_events.build
  end

  def create  
    @event = current_user.created_events.build(user_params)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end


  private

  def user_params
    params.require(:event).permit(:name, :location, :schedule)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_url # halts request cycle
    end
  end


end
