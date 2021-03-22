class EventsController < ApplicationController

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


end
